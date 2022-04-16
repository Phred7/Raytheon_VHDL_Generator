"""
# Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
from abc import ABC, abstractmethod
from typing import List, Tuple

from static_utilities import StaticUtilities

import re


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
        Does not account for escaped characters. Fairly simple lexical parser. Certainly has bugs unaccounted for at
        time of writing.
        A "line of code" is a string which terminates with a {, a }, or a ;. ; is not used to terminate lines of code
        while within parenthesis. Nothing is used to terminate a line of code while within quotes.
        A "Line of code" here is not necessarily one actual newline. All #include stmts are a single line of code,
        usually, since they do not terminate in semicolons.
        @return: A list of strings, each of which contain one line of code.
        """
        parenthesis_depth: int = 0
        in_single_quotes: bool = False
        in_double_quotes: bool = False
        lines: List[str] = []
        current_line: str = ""
        for char in c_block:
            if char == "'":
                if not in_double_quotes:
                    in_single_quotes = not in_single_quotes
            elif char == '"':
                if not in_single_quotes:
                    in_double_quotes = not in_double_quotes

            current_line += char

            if not in_single_quotes and not in_double_quotes:
                if char == "(":
                    parenthesis_depth += 1
                elif char == ")":
                    parenthesis_depth -= 1
                elif char in "{};":
                    lines.append(current_line)
                    current_line = ""
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
        if re.search(function_name, line) is not None:
            has_found_arguments = False
            num_args_discovered = 0
            i = line.index(function_name.replace(r"\b", ""))
            while num_args_discovered < argument_index or not has_found_arguments:
                i = i + 1
                if line[i] == ',':
                    num_args_discovered += 1
                elif line[i] == '(':
                    has_found_arguments = True
            j: int = i+1
            paren_depth = 0
            d_quotes = False
            s_quotes = False
            for index in range(i+1, len(line)):
                char = line[index]
                if char in ',)' and not (paren_depth >= 1) and not (d_quotes or s_quotes):
                    j = index
                    break
                else:
                    if char == '(':
                        paren_depth += 1
                    elif char == ")":
                        paren_depth -= 1
                    elif char == '"':
                        d_quotes = not d_quotes
                    elif char == "'":
                        s_quotes = not s_quotes

            beginning = line[:i+1]
            arg = line[i+1:j]
            end = line[j:]
            return beginning, arg, end
        else:
            return None


if __name__ == '__main__':
    print(InstrumentationStrategy.decompose_nth_argument(r'\bprintf\b', 0, 'printf(a,b,c);'))