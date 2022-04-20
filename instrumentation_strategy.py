"""
# Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
import string
import random
import re

from abc import ABC, abstractmethod
from typing import List, Tuple, Dict

from static_utilities import StaticUtilities



class InstrumentationStrategy(ABC):
    """
    This class acts as an interface for instrumentation.
    """

    def __init__(self) -> None:
        self.type = self.__class__.__name__
        StaticUtilities.logger.debug(f"{InstrumentationStrategy.__name__} object of type {self.type} initialized")

    @abstractmethod
    def instrument(self, file_to_instrument: str) -> bool:
        """
        Method to be declared by concrete strategies.
        :param file_to_instrument: the project containing the source to be modified.
        :return: bool representing if the file was modified.
        """
        pass

    @staticmethod
    def c_variable_from_declaration(line: str,
                                    c_types: List[str],
                                    ) -> str:
        """
        Utility method used to get the name of a variable in C from the line where it is declared.
        :param line: A line of C code containing a primitive variable declaration.
        :return: The name of the variable being declared.
        """
        line = line.split("=")[0]

        for c_type in c_types:
            line = line.replace(c_type, "")
        line = line.replace(" ", "").replace(";", "").replace("\t", "").replace("\n", "")
        return line

    @staticmethod
    def find_defined_primitives(c_lines: List[str], desired_types: List[str] = None) -> List[Tuple[int, str]]:
        """
        Given a list of lines of C code, finds all primitive variables (optionally, of certain types) which are declared
        within those lines.
        :param c_lines:
        :param desired_types: A list of desired primitive types (if left to default parameter, finds all types)
        :return: A list of tuples which contain the line number and the name of the variable being declared.
        """
        c_types: List[str]
        if desired_types is None:
            c_types = ["int", "char", "float", "short", "long", "unsigned"]
        else:
            c_types = desired_types

        return [(i, InstrumentationStrategy.c_variable_from_declaration(line, c_types)) for i, line in
         enumerate(c_lines) if any([c_type in line and not any(
            [char in line for char in ["(", ")", "[", "]"]]) for c_type in c_types])]

    @staticmethod
    def split_c_code_to_lines(c_block: str) -> List[str]:
        """
        Splits a string containing C code into a list of strings, each of which contains one line of code.
        A "line of code" is a string which terminates with a {, a }, or a ;. ; is not used to terminate lines of code
        while within parenthesis. Nothing is used to terminate a line of code while within quotes.
        A "Line of code" here is not necessarily one actual newline. All #include stmts are a single line of code,
        usually, since they do not terminate in semicolons.
        @return: A list of strings, each of which contain one line of code.
        """
        stringless_c_block, variable_mapping = InstrumentationStrategy.remove_c_strings_from_line(c_block)
        parenthesis_depth: int = 0
        lines: List[str] = []
        current_line: str = ""
        for char in stringless_c_block:
            current_line += char
            if char == "(":
                parenthesis_depth += 1
            elif char == ")":
                parenthesis_depth -= 1
            elif char in "{};":
                lines.append(current_line)
                current_line = ""
        for i in range(len(lines)):
            lines[i] = InstrumentationStrategy.undo_string_removal(lines[i], variable_mapping)
        return lines

    @staticmethod
    def decompose_nth_argument(function_name: str, argument_index: int, line: str) -> Tuple[str, str, str]:
        """
        Searches for a call of a specific function in a line of C code. Returns the text before the nth argument,
        the nth argument, and the text after the nth argument.
        For example, to decompose the function call '\bprintf\b' in the line 'printf(a,b,c);' around the 0th argument,
        you would return ('printf(', 'a', ',b,c);').
        @param function_name: The function to search for. Must begin and end with '\b' (raw text) to indicate
            regex non-word characters.
        @param argument_index: the index in the argument list to decompose around. 0-indexed.
        @param line: the line of code to search for the argument.
        @return: The text before the nth argument, the nth argument, and the text after the nth argument.
        """
        modified_line, variable_mapping = InstrumentationStrategy.remove_c_strings_from_line(line)
        if re.search(function_name, modified_line) is not None:
            has_found_arguments = False
            num_args_discovered = 0
            i = modified_line.index(function_name.replace(r"\b", ""))
            while num_args_discovered < argument_index or not has_found_arguments:
                i = i + 1
                if modified_line[i] == ',':
                    num_args_discovered += 1
                elif modified_line[i] == '(':
                    has_found_arguments = True
            j: int = i+1
            paren_depth = 0
            for index in range(i+1, len(modified_line)):
                char = modified_line[index]
                if char in ',)' and not (paren_depth >= 1):
                    j = index
                    break
                else:
                    if char == '(':
                        paren_depth += 1
                    elif char == ")":
                        paren_depth -= 1

            beginning = modified_line[:i+1]
            arg = modified_line[i+1:j]
            end = modified_line[j:]
            beginning = InstrumentationStrategy.undo_string_removal(beginning, variable_mapping)
            arg = InstrumentationStrategy.undo_string_removal(arg, variable_mapping)
            end = InstrumentationStrategy.undo_string_removal(end, variable_mapping)

            return beginning, arg, end
        else:
            return None

    @staticmethod
    def line_of_c_code_contains_comparison(line: str,
                                           comparisons: Tuple[str] = ("==", "!=", ">", "<", ">=", "<=", "&&", "||", "!"),
                                           ) -> bool:
        """
        Identifies whether a comparison between values exists.
        @param line: The line of code to analyze.
        @param comparisons: A tuple containing C comparison operators. By default uses all comparison operators;
        can pass in a smaller tuple checking for a specific operator.
        @return: Whether the comparison operator is found in that string. Attempts to exclude non-comparison uses of the
        operator, such as less-than vs. bitwise shifting. Does not account for whether comparison operators are found
        within strings.
        """
        new_line, mapping = InstrumentationStrategy.remove_c_strings_from_line(line)
        for comparison_token in comparisons:
            if comparison_token in new_line:
                if comparison_token == "<" and "<<" in line:
                        if line.index("<") != line.index("<<"):
                            return True
                elif comparison_token == '>' and ">>" in line:
                        if line.index(">") != line.index(">>"):
                            return True
                else:
                    return True
        return False

    @staticmethod
    def remove_c_strings_from_line(line: str) -> Tuple[str, Dict]:
        """
        Finds string literals in a line of C code and replaces them with dummy values. Returns the modified string and
        a mapping of dummy values to string literals. Dummy values are created and "guaranteed" to be unique.

        For example, calling this function on the line:
        if (strcmp(char_buffer, "this is a string literal") {
        would return ( "if (strcmp(char_buffer, random_name_0135821341) {", {"random_name_0135821341": "this is a string literal"})

        @param line: The line of C code to modify.
        @return: A tuple containing:
                    - The new line, with all string literals replaced by dummy values.
                    - A dict containing mapping of dummy values to string literals.
        """
        random_marker = "".join([random.choice(string.ascii_lowercase) for _ in range(10)])
        elements = re.sub("((?<!\\\\)(?:\\\\{2})*)[\"]", random_marker, line).split(random_marker)
        if len(elements) == 1:
            return line, {}
        variable_mapping: Dict = {}
        for i in range(len(elements)):
            if i % 2 == 0:
                continue
            replacement = f'random_name_{"".join([random.choice(string.ascii_lowercase) for _ in range(10)])}'
            variable_mapping[replacement] = f'"{elements[i]}"'
            elements[i] = replacement
        new_line = "".join(elements)
        return new_line, variable_mapping

    @staticmethod
    def undo_string_removal(line: str, variable_map: Dict) -> str:
        for key, value in variable_map.items():
            line = line.replace(key, value)
        return line
