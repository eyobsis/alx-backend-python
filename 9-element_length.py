#!/usr/bin/env python3
"""
Module for annotating function element_length parameters and return value.
"""
from typing import Iterable, Sequence, List, Tuple

def element_length(lst: Iterable[Sequence]) -> List[Tuple[Sequence, int]]:
    """
    Returns a list of tuples where each tuple contains an element of the input list and its length.
    """
    return [(i, len(i)) for i in lst]
