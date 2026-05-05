Here’s a simple Python function to check if a number is prime, along with an explanation:

### **Python Function:**
```python
def is_prime(num):
    if num <= 1:  # Numbers less than or equal to 1 are not prime
        return False
    if num == 2:  # 2 is the only even prime number
        return True
    if num % 2 == 0:  # If divisible by 2, it's not prime
        return False

    # Check divisibility from 3 up to sqrt(num) (optimization)
    for i in range(3, int(num**0.5) + 1, 2):
        if num % i == 0:
            return False
    return True
```

---

### **How It Works (Simple Explanation):**
1. **First Checks:**
   - If the number is **1 or smaller**, it’s **not prime** (e.g., 0, 1, 4).
   - If the number is **2**, it’s **prime** (the only even prime).
   - If the number is **even and greater than 2**, it’s **not prime** (e.g., 4, 6, 8).

2. **Checking Divisors:**
   - For odd numbers greater than 2, we check if they’re divisible by any number from **3 up to the square root of the number** (e.g., for 13, we check up to √13 ≈ 3.6 → just 3).
   - If the number is divisible by any of these, it’s **not prime** (e.g., 9 is divisible by 3 → not prime).
   - If **no divisors** are found, the number is **prime** (e.g., 13 is prime).

3. **Optimization:**
   - We only check **odd divisors** (since even numbers are already ruled out).
   - We stop at the **square root** of the number (since a larger factor would have a corresponding smaller factor already checked).

---

### **Example Usage:**
```python
print(is_prime(7))   # Output: True (7 is prime)
print(is_prime(10))  # Output: False (10 is not prime)
print(is_prime(1))   # Output: False (1 is not prime)
```

This function efficiently checks for primality while keeping it simple! 😊