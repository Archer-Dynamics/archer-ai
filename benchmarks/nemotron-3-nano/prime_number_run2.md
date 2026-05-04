
**Python code**

```python
def is_prime(n: int) -> bool:
    """
    Returns True if n is a prime number, False otherwise.
    """
    # 1. A prime must be larger than 1
    if n <= 1:
        return False

    # 2. 2 is the only even prime
    if n == 2:
        return True

    # 3. Any other even number cannot be prime
    if n % 2 == 0:
        return False

    # 4. For odd numbers we only need to try divisors up to √n
    limit = int(n ** 0.5) + 1          # the integer part of sqrt(n)
    i = 3
    while i <= limit:
        if n % i == 0:                # found a divisor → not prime
            return False
        i += 2                         # only test odd numbers
    return True                       # no divisor found → prime
```

**How it works – plain English**

1. **First rule:** A prime number is bigger than 1. If the input is 1 or smaller, the function says “not prime right away”.

2. **Second rule:** The number 2 is special – it’s the only even prime. If the input is 2, the function answers “prime”.

3. **Third rule:** Every other even number (4, 6, 8, …) can be split by 2, so it’s not prime. The function checks that with `n % 2 == 0` and returns “not prime”.

4. **Fourth rule – the main idea for odd numbers:**  
   *If a number has a divisor bigger than its square‑root, it must also have a matching divisor smaller than the square‑root.*  
   Therefore we only need to test possible divisors up to the square‑root of the number.  

   *We skip even numbers because we already handled them, so we check only odd numbers (3, 5, 7, …) up to `int(sqrt(n))`.*

5. **Divisor test:** For each candidate divisor `i`, we see if it divides `n` without a remainder (`n % i == 0`). If it does, `n` is composite, and the function returns “not prime” immediately.

6. **If the loop finishes:** No divisor was found, which means the only factors are 1 and the number itself. That’s exactly what a prime is, so the function returns **True**.

**Simple example**

```python
print(is_prime(2))   # True
print(is_prime(11))  # True
print(is_prime(27))  # False
```

The function is short, easy to read, and works for any ordinary integer.