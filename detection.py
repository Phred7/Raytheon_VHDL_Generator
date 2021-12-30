###############################
# Detection
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal and Walker Ward
###############################
from typing import Dict

from static_utilities import StaticUtilities


class Detection:

    def __init__(self, file: str) -> None:
        self.hash: Dict[int: str] = None
        self.file: str = file
        self.binary_security_quality: float = 0
        StaticUtilities.logger.debug(f"{Detection.__name__} object initialized")

    def detect(self) -> None:
        pass

    def pique_bin(self) -> None:
        # integrate into detect() method and remove this method. Add kwargs bool for pique-bin
        pass

    def add_to_hash(self, file: str) -> None:
        pass
