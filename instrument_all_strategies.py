"""
# All Instrumentation Strategies Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
from instrument_buffer_overflow_attack import BufferOverflowAttack
from instrument_int_overflow_attack import IntOverflowAttack
from instrument_string_format_attack import StringFormatAttack
from instrumentation_strategy import InstrumentationStrategy


class AllInstrumentationStrategies(InstrumentationStrategy):

    def instrument(self, file_to_instrument: str) -> bool:
        buffer_overflow: BufferOverflowAttack = BufferOverflowAttack()
        int_overflow: IntOverflowAttack = IntOverflowAttack()
        string_format: StringFormatAttack = StringFormatAttack()
        buffer_overflow_bool: bool = buffer_overflow.instrument(file_to_instrument)
        int_overflow_bool: bool = int_overflow.instrument(file_to_instrument)
        string_format_bool: bool = string_format.instrument(file_to_instrument)
        return buffer_overflow_bool or int_overflow_bool or string_format_bool
