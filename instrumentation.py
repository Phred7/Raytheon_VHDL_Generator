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
    """
    Strategy Pattern Context.
    """

    def __init__(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        self._instrumentation_strategy = instrumentation_strategy
        if instrumentation_strategy is None:
            StaticUtilities.logger.warning(f"{Instrumentation.__name__} object initialized without ConcreteStrategy")

    @property
    def instrumentation_strategy(self) -> InstrumentationStrategy:
        """
        Property representing the type of Concrete Strategy that this object contains a reference to.
        :return: The type of Concrete Strategy that this object contains a reference to.
        """
        return self._instrumentation_strategy

    @instrumentation_strategy.setter
    def instrumentation_strategy(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        """
        Allows the concrete strategy object to be replaced at runtime.
        :param instrumentation_strategy: New concrete strategy object to replace with the current.
        :return: None.
        """
        self._instrumentation_strategy = instrumentation_strategy

    def runner(self) -> None:  # TODO: rename method.
        """
        Method that calls the algorithm or process defined by the concrete strategy.
        :return: None.
        """
        results: str = self._instrumentation_strategy.instrument("")

