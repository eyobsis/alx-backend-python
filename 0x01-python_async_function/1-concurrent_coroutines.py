#!/usr/bin/env python3
"""
Module for executing multiple coroutines concurrently
"""
import asyncio
from typing import List

wait_random = __import__('0-basic_async_syntax').wait_random


async def wait_n(n: int, max_delay: int) -> List[float]:
    """
    Asynchronous routine that spawns wait_random n times
    with the specified max_delay and returns the list of delays.
    """
    return sorted([await wait_random(max_delay) for _ in range(n)])
