from instrumentation_strategy import InstrumentationStrategy


class BufferOverflowAttack(InstrumentationStrategy):

    def instrument(self, file: str) -> str:
        return ""
