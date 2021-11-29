from instrumentation_strategy import InstrumentationStrategy


class IntOverflowAttack(InstrumentationStrategy):

    def instrument(self, file: str) -> str:
        return ""
