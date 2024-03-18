import asyncio
from typing import List

async def wait_n(n: int, max_delay: int) -> List[float]:
    tasks = [wait_random(max_delay) for _ in range(n)]
    return await asyncio.gather(*tasks)
