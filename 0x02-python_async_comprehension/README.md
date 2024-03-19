# Asynchronous Python Comprehensions

This repository contains Python code demonstrating the usage of asynchronous generators and comprehensions.

## Files

- `0-async_generator.py`: Defines an asynchronous generator that yields random numbers between 0 and 10 after each second.
- `1-async_comprehension.py`: Implements an asynchronous comprehension to collect 10 random numbers using the generator from `0-async_generator.py`.
- `2-measure_runtime.py`: Measures the runtime for executing the asynchronous comprehension from `1-async_comprehension.py` four times in parallel.
- `0-main.py`: Main file to execute and print the yielded values from the asynchronous generator.
- `1-main.py`: Main file to execute and print the result of the asynchronous comprehension.
- `2-main.py`: Main file to execute and print the total runtime for executing the asynchronous comprehension four times in parallel.

## Instructions

To run the code:

1. Make sure you have Python 3 installed on your system.
2. Install the required dependencies using `pip install -r requirements.txt`.
3. Execute the desired main file (e.g., `python 0-main.py`, `python 1-main.py`, `python 2-main.py`).

## Author

This code was written by [EYOB Sisay].


