from abc import ABC, abstractmethod


class InstrumentationStrategy(ABC):

    def __init__(self) -> None:
        self.type: str = ""

    @abstractmethod
    def instrument(self) -> None:
        pass
