#!/bin/bash

# Create Python files
cat << EOF > 0-basic_async_syntax.py
import asyncio
import random

async def wait_random(max_delay: int = 10) -> float:
    delay = random.uniform(0, max_delay)
    await asyncio.sleep(delay)
    return delay
EOF

cat << EOF > 1-concurrent_coroutines.py
import asyncio
from typing import List

async def wait_n(n: int, max_delay: int) -> List[float]:
    tasks = [wait_random(max_delay) for _ in range(n)]
    return await asyncio.gather(*tasks)
EOF

cat << EOF > 2-measure_runtime.py
import asyncio
from time import perf_counter

async def measure_time(n: int, max_delay: int) -> float:
    start_time = perf_counter()
    await wait_n(n, max_delay)
    end_time = perf_counter()
    total_time = end_time - start_time
    return total_time / n
EOF

cat << EOF > 3-tasks.py
import asyncio

def task_wait_random(max_delay: int) -> asyncio.Task:
    return asyncio.create_task(wait_random(max_delay))
EOF

cat << EOF > 4-tasks.py
import asyncio

async def task_wait_n(n: int, max_delay: int) -> List[float]:
    tasks = [task_wait_random(max_delay) for _ in range(n)]
    return await asyncio.gather(*tasks)
EOF

# Create main.py files
cat << EOF > 0-main.py
#!/usr/bin/env python3

import asyncio

wait_random = __import__('0-basic_async_syntax').wait_random

print(asyncio.run(wait_random()))
print(asyncio.run(wait_random(5)))
print(asyncio.run(wait_random(15)))
EOF

cat << EOF > 1-main.py
#!/usr/bin/env python3
'''
Test file for printing the correct output of the wait_n coroutine
'''
import asyncio

wait_n = __import__('1-concurrent_coroutines').wait_n

print(asyncio.run(wait_n(5, 5)))
print(asyncio.run(wait_n(10, 7)))
print(asyncio.run(wait_n(10, 0)))
EOF

cat << EOF > 2-main.py
#!/usr/bin/env python3

measure_time = __import__('2-measure_runtime').measure_time

n = 5
max_delay = 9

print(measure_time(n, max_delay))
EOF

cat << EOF > 3-main.py
#!/usr/bin/env python3

import asyncio

task_wait_random = __import__('3-tasks').task_wait_random


async def test(max_delay: int) -> float:
    task = task_wait_random(max_delay)
    await task
    print(task.__class__)

asyncio.run(test(5))
EOF

cat << EOF > 4-main.py
#!/usr/bin/env python3

import asyncio

task_wait_n = __import__('4-tasks').task_wait_n

n = 5
max_delay = 6
print(asyncio.run(task_wait_n(n, max_delay)))
EOF

chmod +x 0-main.py 1-main.py 2-main.py 3-main.py 4-main.py

