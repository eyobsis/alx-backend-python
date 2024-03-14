#!/usr/bin/env python3


"""
Module for safely accessing the first element of a sequence.
"""


from typing import Any, Sequence, Union


def safe_first_element(lst: Sequence) -> Union[Any, None]:
    """
    Returns the first element of a sequence safely,
    or None if the sequence is empty.

    Args:
        lst (Sequence): The input sequence.

    Returns:
        Union[Any, None]: The first element of the sequence
        if it's not empty, else None.
    """
    if lst:
        return lst[0]
    else:
        return None
