#!/bin/bash

# Create README.md
touch README.md

# Create async_generator.py
cat > 0-async_generator.py << EOF
#!/usr/bin/env python3
"""
Async Generator
"""

import asyncio
import random


async def async_generator() -> float:
    """
    Coroutine that yields a random number between 0 and 10
    """
    for _ in range(10):
        await asyncio.sleep(1)
        yield random.uniform(0, 10)

EOF

# Create async_comprehension.py
cat > 1-async_comprehension.py << EOF
#!/usr/bin/env python3
"""
Async Comprehension
"""

from typing import List
from asyncio import gather

async_generator = __import__('0-async_generator').async_generator


async def async_comprehension() -> List[float]:
    """
    Coroutine that collects 10 random numbers using async comprehension
    """
    return [i async for i in async_generator()]

EOF

# Create measure_runtime.py
cat > 2-measure_runtime.py << EOF
#!/usr/bin/env python3
"""
Run time for four parallel comprehensions
"""

import asyncio
from time import time

async_comprehension = __import__('1-async_comprehension').async_comprehension


async def measure_runtime() -> float:
    """
    Coroutine that measures the runtime for four parallel comprehensions
    """
    start_time = time()
    await asyncio.gather(*(async_comprehension() for _ in range(4)))
    end_time = time()
    return end_time - start_time

EOF

# Set permissions
chmod +x *.py

# Create main.py files
cat > 0-main.py << EOF
#!/usr/bin/env python3

import asyncio

async_generator = __import__('0-async_generator').async_generator

async def print_yielded_values():
    result = []
    async for i in async_generator():
        result.append(i)
    print(result)

asyncio.run(print_yielded_values())
EOF

cat > 1-main.py << EOF
#!/usr/bin/env python3

import asyncio

async_comprehension = __import__('1-async_comprehension').async_comprehension

async def main():
    print(await async_comprehension())

asyncio.run(main())
EOF

cat > 2-main.py << EOF
#!/usr/bin/env python3

import asyncio

measure_runtime = __import__('2-measure_runtime').measure_runtime

async def main():
    return await(measure_runtime())

print(
    asyncio.run(main())
)
EOF

