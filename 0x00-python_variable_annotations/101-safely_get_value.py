#!/usr/bin/env python3

from typing import Any, Mapping, TypeVar, Union

# Define a TypeVar for the return value
T = TypeVar('T')

def safely_get_value(dct: Mapping, key: Any, default: Union[T, None] = None) -> Union[Any, T]:
    """
    Safely retrieves a value from a dictionary.

    Args:
        dct (Mapping): The input dictionary.
        key (Any): The key to look up in the dictionary.
        default (Union[T, None], optional):default value
        to return if key is not found.

    Returns:
        Union[Any, T]: The value associated with the key if found, else the default value.
    """
    if key in dct:
        return dct[key]
    else:
        return default
