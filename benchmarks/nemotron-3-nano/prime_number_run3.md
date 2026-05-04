
**Simple Python code**

```python
def is_prime(n: int) -> bool:
    """
    Return True if n is a prime number, False otherwise.
    """
    # A prime number must be larger than 1
    if n <= 1:
        return False

    # 2 is the only even prime number
    if n == 2:
        return True

    # Any other even number cannot be prime
    if n % 2 == 0:
        return False

    # For odd numbers we only need to test divisors up to √n
    limit = int(n ** 0.5) + 1
    divisor = 3
    while divisor <= limit:
        if n % divisor == 0:          # found a divisor → not prime
            return False
        divisor += 2                  # only check odd numbers (5, 7, 9,…)
    return True                      # no divisor found → prime
```

---

### How the function works – plain English (beginner‑friendly)

1. **Rule of thumb:** A prime number is a whole number greater than 1 that cannot be split into two smaller natural numbers (except 1 and itself).  

2. **First three steps eliminate obvious “no‑peace” cases**  
   * If the number is **1 or less**, it can’t be prime → return *False*.  
   * If the number is **exactly 2**, it **is** prime → return *True*.  
   * If the number is **even and larger than 2**, it’s divisible by 2, so it’s not prime → return *False*.

3. **The most efficient part for odd numbers**  
   * Even numbers are already handled, so we only need to consider odd numbers.  
   * If a number *n* has a divisor larger than √*n*, then it must also have a partner divisor smaller than √*n*.  
   * Therefore, it’s enough to test possible divisors **up to** the square‑root of *n*. Anything beyond that can’t be a factor.

4. **Testing only odd divisors**  
   * Starting with 3, we check each odd number (3, 5, 7, …).  
   * We stop when we reach `limit = int(sqrt(n)) + 1`.

5. **What if we find a divisor?**  
   * If `n % divisor == 0` there’s no remainder → *n* has been split into two smaller numbers, so it’s **not prime** → the function returns *False* immediately.

6. **If the loop finishes without finding a divisor**  
   * No number ≤ √*n* could divide *n*, meaning the only factors are 1 and *n* itself → **prime**.  
   * The function returns *True*.

---

### Example usage

```python
print(is_prime(2))    # True  (only even prime)
print(is_prime(7))    # True  (prime)
print(is_prime(9))    # False (3 × 3)
print(is_prime(25))   # False (5 × 5)
print(is_prime(29))   # True  (prime)
```

The function is short, runs quickly for typical numbers, and follows the basic definition of a prime number in an easy‑to‑understand way.