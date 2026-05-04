
**Python code**

```python
def is_prime(n: int) -> bool:
    """
    Returns True if n is a prime number, False otherwise.
    """
    # 1️⃣ A prime must be greater than 1
    if n <= 1:
        return False

    # 2️⃣ 2 is the only even prime
    if n == 2:
        return True

    # 3️⃣ Any other even number is NOT prime
    if n % 2 == 0:
        return False

    # 4️⃣ For odd numbers we only need to test divisors up to √n
    #    (if a larger factor existed, its pair would be smaller than √n)
    limit = int(n ** 0.5) + 1
    for i in range(3, limit, 2):   # test only odd numbers
        if n % i == 0:           # found a divisor → not prime
            return False

    # No divisor found → prime
    return True
```

**How the function works (plain‑English explanation)**  

1. **First we look at the easy “no‑peace” cases**  
   *A prime number must be larger than 1.**  
   If `n` is 0, 1, or negative, the function says “not prime” right away.  

   *The only even prime is 2.**  
   If the number is exactly 2, it is prime – we return `True`.  

   *Any other even number can’t be prime.**  
   If `n` is even and not 2, the function returns `False` because it’s divisible by 2.

2. **Now we handle odd numbers bigger than 2**  
   The most important idea: **If a number has a factor larger than its square‑root, the matching “partner” factor must be smaller than the square‑root**.  
   So we only need to test possible divisors up to `√n`.  

   *We skip even divisors because we already ruled out even numbers as candidates.*  
   The loop starts at 3 and goes up to `int(√n) + 1`, stepping by 2 each time (so it only checks odd numbers: 3, 5, 7, …).

   *If any of those odd numbers divides `n` evenly (`n % i == 0`), then `n` is not prime.*  
   The function returns `False` immediately.

3. **If we finish the loop without finding a divisor**  
   The only thing left is that `n` could only be split into 1 and itself – that’s the definition of a prime.  
   Therefore we return `True`.

---

**Example usage**

```python
print(is_prime(2))   # True
print(is_prime(3))   # True
print(is_prime(4))   # False
print(is_prime(17))  # True
print(is_prime(20))  # False
```

The function is simple, easy to read, and runs quickly because it only checks numbers up to the square‑root of the input.