#!/usr/bin/env python3
"""
Module for type-annotated function make_multiplier that takes a float multiplier as argument and returns a function that multiplies a float by multiplier.
"""
from typing import Callable

def make_multiplier(multiplier: float) -> Callable[[float], float]:
    """
    Returns a function that takes a float and returns the result of multiplying it by the specified multiplier.
    """
    def multiplier_function(x: float) -> float:
        return x * multiplier
    return multiplier_function
