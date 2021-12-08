###############################
# Pique Bin
# PIQUE-BIN tool written by Andrew L. Johnson
# For Raytheon Research Project and Interdisciplinary Capstone Project
# Dr. Clem Izurieta
# Dr. Brock LaMeres
# Written by Walker Ward
###############################
import logging
from logging import Logger


class PiqueBin:
    logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
    logger: Logger = logging.getLogger(__name__)

    def __init__(self, file: str) -> None:

        pass

    def detect(self) -> None:
        pass

    def pique_bin(self) -> None:
        pass

    def add_to_hash(self, file: str) -> None:
        pass
