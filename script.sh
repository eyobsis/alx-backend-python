#!/bin/bash

# Create 0-add.py
cat << EOF > 0-add.py
#!/usr/bin/env python3
"""
Module for type-annotated function add that takes a float a and a float b as arguments and returns their sum as a float.
"""
def add(a: float, b: float) -> float:
    """
    Adds two floats and returns the result as a float.
    """
    return a + b
EOF

# Create 1-concat.py
cat << EOF > 1-concat.py
#!/usr/bin/env python3
"""
Module for type-annotated function concat that takes a string str1 and a string str2 as arguments and returns a concatenated string.
"""
def concat(str1: str, str2: str) -> str:
    """
    Concatenates two strings and returns the result as a string.
    """
    return str1 + str2
EOF

# Create 2-floor.py
cat << EOF > 2-floor.py
#!/usr/bin/env python3
"""
Module for type-annotated function floor which takes a float n as argument and returns the floor of the float.
"""
import math

def floor(n: float) -> int:
    """
    Returns the floor of the given float.
    """
    return math.floor(n)
EOF

# Create 3-to_str.py
cat << EOF > 3-to_str.py
#!/usr/bin/env python3
"""
Module for type-annotated function to_str that takes a float n as argument and returns the string representation of the float.
"""
def to_str(n: float) -> str:
    """
    Returns the string representation of the given float.
    """
    return str(n)
EOF

# Create 4-define_variables.py
cat << EOF > 4-define_variables.py
#!/usr/bin/env python3
"""
Module for defining and annotating variables.
"""

a: int = 1
pi: float = 3.14
i_understand_annotations: bool = True
school: str = "Holberton"
EOF

# Create 5-sum_list.py
cat << EOF > 5-sum_list.py
#!/usr/bin/env python3
"""
Module for type-annotated function sum_list which takes a list input_list of floats as argument and returns their sum as a float.
"""
from typing import List

def sum_list(input_list: List[float]) -> float:
    """
    Sums the elements of the input list and returns the result as a float.
    """
    return sum(input_list)
EOF

# Create 6-sum_mixed_list.py
cat << EOF > 6-sum_mixed_list.py
#!/usr/bin/env python3
"""
Module for type-annotated function sum_mixed_list which takes a list mxd_lst of integers and floats and returns their sum as a float.
"""
from typing import List, Union

def sum_mixed_list(mxd_lst: List[Union[int, float]]) -> float:
    """
    Sums the elements of the input mixed list and returns the result as a float.
    """
    return sum(mxd_lst)
EOF

# Create 7-to_kv.py
cat << EOF > 7-to_kv.py
#!/usr/bin/env python3
"""
Module for type-annotated function to_kv that takes a string k and an int OR float v as arguments and returns a tuple.
"""
from typing import Union, Tuple

def to_kv(k: str, v: Union[int, float]) -> Tuple[str, float]:
    """
    Returns a tuple with the string k as the first element and the square of v as the second element (annotated as float).
    """
    return (k, v * v)
EOF

# Create 8-make_multiplier.py
cat << EOF > 8-make_multiplier.py
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
EOF

# Create 9-element_length.py
cat << EOF > 9-element_length.py
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
EOF

# Make all files executable
chmod +x *.py

