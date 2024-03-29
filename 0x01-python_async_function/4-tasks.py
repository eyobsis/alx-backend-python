#!/usr/bin/env python3
"""
Module for creating asyncio.Tasks from wait_n
"""
import asyncio
from typing import List

wait_n = __import__('1-concurrent_coroutines').wait_n


async def task_wait_n(n: int, max_delay: int) -> List[float]:
    """
    Asynchronous function that spawns wait_random n times
    with the specified max_delay and returns the list of delays.
    """
    return await wait_n(n, max_delay)
