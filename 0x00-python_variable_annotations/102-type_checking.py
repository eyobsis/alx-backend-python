#!/usr/bin/env python3

from typing import Tuple, List, Any

def zoom_array(lst: Tuple[Any, ...], factor: int = 2) -> Tuple[Any, ...]:
    """
    Zooms in on an array by repeating each element according to a factor.

    Args:
        lst (Tuple[Any, ...]): The input array.
        factor (int, optional): The factor by which to zoom in (default is 2).

    Returns:
        Tuple[Any, ...]: The zoomed-in array.
    """
    zoomed_in: List[Any] = [
        item for item in lst
        for i in range(factor)
    ]
    return tuple(zoomed_in)


array = (12, 72, 91)

zoom_2x = zoom_array(array)

zoom_3x = zoom_array(array, 3)
