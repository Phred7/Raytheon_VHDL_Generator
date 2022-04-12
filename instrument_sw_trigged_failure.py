"""
# Buffer Overflow Attack Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
"""
from instrumentation_strategy import InstrumentationStrategy


class SWTriggeredFailure(InstrumentationStrategy):
    """SW Triggered Failure"""

    def instrument(self, file_to_instrument: str) -> bool:
        """"
        Instruments a file by adding a SW interrupt and causing control loop to stop.
        :param file_to_instrument: the project containing the source to be modified.
        :return: True if the process is successful, False if it fails at any step
        """
