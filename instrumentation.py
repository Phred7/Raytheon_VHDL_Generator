from instrumentation_strategy import InstrumentationStrategy


class Instrumentation:

    def __init__(self, instrumentation_strategy: InstrumentationStrategy):
        self._instrumentation_strategy = instrumentation_strategy

    @property
    def instrumentation_strategy(self) -> InstrumentationStrategy:
        return self._instrumentation_strategy

    @instrumentation_strategy.setter
    def instrumentation_strategy(self, instrumentation_strategy: InstrumentationStrategy) -> None:
        self._instrumentation_strategy = instrumentation_strategy

    def runner(self) -> None:
        results = self._instrumentation_strategy.instrument("")

