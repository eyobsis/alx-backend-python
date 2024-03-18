import asyncio
from time import perf_counter

async def measure_time(n: int, max_delay: int) -> float:
    start_time = perf_counter()
    await wait_n(n, max_delay)
    end_time = perf_counter()
    total_time = end_time - start_time
    return total_time / n
