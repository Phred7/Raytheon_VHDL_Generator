###############################
# Instrumentation
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
from instrumentation_strategy import InstrumentationStrategy
from static_utilities import StaticUtilities


class Instrumentation:

    def __init__(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        self._instrumentation_strategy = instrumentation_strategy
        StaticUtilities.logger.debug(f"{Instrumentation.__name__} object initialized")

    @property
    def instrumentation_strategy(self) -> InstrumentationStrategy:
        return self._instrumentation_strategy

    @instrumentation_strategy.setter
    def instrumentation_strategy(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        self._instrumentation_strategy = instrumentation_strategy

    def runner(self) -> None:
        results: str = self._instrumentation_strategy.instrument("")

