"""
# Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
from abc import ABC, abstractmethod
from typing import List, Tuple

from ccs_project import CCSProject
from static_utilities import StaticUtilities
import pycparser as pcp


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
        A line of code is a string which terminates with a { or a ;. ; is not used to terminate lines of code while
        within parenthesis. Nothing is used to terminate a line of code while within quotes.
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
                elif char == "{" or char == ";":
                    lines.append(current_line)
                    current_line = ""
        return lines
