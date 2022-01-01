###############################
# Detection
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal and Walker Ward
###############################
from typing import Dict

from pique_bin import PiqueBin
from static_utilities import StaticUtilities


class Detection:

    def __init__(self, path: str, source_file: str, *, pique_bin_bool: bool = True) -> None:
        self.hash: Dict[int: str] = None
        self.source_file: str = source_file
        self.path: str = path
        self.binary_security_quality: float = 0
        if pique_bin_bool:
            self.pique_bin: PiqueBin = PiqueBin(source_file_name=self.source_file)
        StaticUtilities.logger.debug(f"{Detection.__name__} object initialized")

    def detect(self) -> None:
        if isinstance(self.pique_bin, PiqueBin):
            StaticUtilities.logger.info(
                f"PIQUE-Bin Binary Security Quality: {self.pique_bin.pique_bin()}")

    def pique_bin(self) -> None:
        # integrate into detect() method and remove this method. Add kwargs bool for pique-bin
        pass

    def add_to_hash(self, file: str) -> None:
        pass


if __name__ == "__main__":
    detection: Detection = Detection(path=r"C:\Users\wward\Documents\GitHub\Raytheon_VHDL_Generator\ccs_workspace\test_generated_ASM", source_file="test_generated_ASM.asm")
    detection.detect()
