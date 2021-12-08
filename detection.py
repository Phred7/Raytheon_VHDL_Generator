###############################
# Detection
# For Raytheon Research Project and Interdisciplinary Capstone Project (2021-'22)
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Michael Heidal and Walker Ward
###############################
import logging
from logging import Logger
from typing import Dict


class Detection:
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
    logger: Logger = logging.getLogger(__name__)

    def __init__(self, file: str) -> None:
        self.hash: Dict[int: str] = None
        self.file: str = file
        pass

    def detect(self) -> None:
        pass

    def pique_bin(self) -> None:
        pass

    def add_to_hash(self, file: str) -> None:
        pass
