Sure, I'd be happy to help! Here's a simple Python function that checks if a given number is prime:

```python
def check_prime(n):
    if n < 2:  # A number less than 2 cannot be prime
        return False
    for i in range(2, int(n**0.5) + 1):  # Check all numbers from 2 up to the square root of n (inclusive)
        if n % i == 0:  # If there's a factor other than 1 and itself, it cannot be prime
            return False
    return True  # If we get through the loop without finding any factors, then it must be prime
```

**Explanation in Plain English:** 
The function `check_prime()` takes one argument, which is a number (`n`). It first checks if the input number `n` is less than two. A number that's less than two cannot be prime because all numbers greater than or equal to two are divisible by smaller numbers (e.g., 3 divides into 1). If `n` is not less than two, it goes on to check whether any of the numbers from 2 up to the square root of `n` (`int(n**0.5)` plus one) are factors of `n`. It does this by checking if the remainder (the number left after dividing `n` by each factor) is zero (`% i == 0`). If it finds any factors, then the function immediately returns `False`, indicating that `n` is not prime.
If we get through all iterations without finding any factors, then we return `True`, meaning `n` must be a prime number!
