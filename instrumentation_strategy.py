###############################
# Instrumentation Strategy
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
from abc import ABC, abstractmethod


class InstrumentationStrategy(ABC):

    def __init__(self) -> None:
        self.type = self.__class__.__name__

    @abstractmethod
    def instrument(self, file: str) -> str:
        pass
