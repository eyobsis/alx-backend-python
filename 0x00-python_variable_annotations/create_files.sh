#!/bin/bash

# Create 100-safe_first_element.py
cat > 100-safe_first_element.py << EOF
from typing import Sequence, Any, Union

def safe_first_element(lst: Sequence) -> Union[Any, None]:
    if lst:
        return lst[0]
    else:
        return None
EOF

# Create 100-main.py
cat > 100-main.py << EOF
#!/usr/bin/env python3

safe_first_element =  __import__('100-safe_first_element').safe_first_element

print(safe_first_element.__annotations__)
EOF

# Create 101-safely_get_value.py
cat > 101-safely_get_value.py << EOF
from typing import Mapping, TypeVar, Any, Union

T = TypeVar('T')

def safely_get_value(dct: Mapping, key: Any, default: Union[T, None] = None) -> Union[Any, T]:
    if key in dct:
        return dct[key]
    else:
        return default
EOF

# Create 101-main.py
cat > 101-main.py << EOF
#!/usr/bin/env python3

safely_get_value = __import__('101-safely_get_value').safely_get_value
annotations = safely_get_value.__annotations__

print("Here's what the mappings should look like")
for k, v in annotations.items():
    print( ("{}: {}".format(k, v)))
EOF

# Create 102-type_checking.py
cat > 102-type_checking.py << EOF
from typing import Tuple, List

def zoom_array(lst: Tuple[int, ...], factor: int = 2) -> Tuple[int, ...]:
    zoomed_in: List[int] = [
        item for item in lst
        for i in range(factor)
    ]
    return tuple(zoomed_in)
EOF

# Create 102-main.py
cat > 102-main.py << EOF
#!/usr/bin/env python3

zoom_array =  __import__('102-type_checking').zoom_array

print(zoom_array.__annotations__)
EOF

echo "Python files created successfully!"

