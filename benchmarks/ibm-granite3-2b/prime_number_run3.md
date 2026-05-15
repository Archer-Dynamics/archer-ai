Here's a simple Python function that checks if a number is prime:

```python
def is_prime(n):
    if n <= 1:
        return False
    elif n <= 3:
        return True
    elif n % 2 == 0 or n % 3 == 0:
        return False
    i = 5
    while i * i <= n:
        if n % i == 0 or n % (i + 2) == 0:
            return False
        i += 6
    return True
```

This function works by checking divisibility starting from 2 up to the square root of the number. It skips even numbers and checks multiples of 3, as well as the next two numbers in that sequence, because all primes are of the form 6k ± 1. This optimization makes the function more efficient.

Here's a step-by-step breakdown:

1. If the number is less than or equal to 1, it's not prime.
2. If the number is less than or equal to 3, it's prime.
3. If the number is divisible by 2 or 3, it's not prime.
4. Start checking divisibility from 5 (the next odd number after 3).
5. Check if the number is divisible by the current number or the next number in the sequence (n % i == 0 or n % (i + 2) == 0).
6. If the number is divisible, it's not prime.
7. If the loop completes without finding any divisors, the number is prime.