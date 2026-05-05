# **Simple Prime Number Checker (Beginner-Friendly!)**

Here’s a **super easy** Python function to check if a number is prime, explained step-by-step like we’re teaching a kid:

---

### **Python Code:**
```python
def is_prime(num):
    if num <= 1:  # 1 or smaller? NOPE, not prime!
        return False
    if num == 2:  # 2 is the ONLY even prime number!
        return True
    if num % 2 == 0:  # If divisible by 2, it’s NOT prime (e.g., 4, 6, 8)
        return False

    # Check divisors from 3 up to sqrt(num) (only odd numbers)
    for i in range(3, int(num**0.5) + 1, 2):
        if num % i == 0:  # If divisible by ANY number, it’s NOT prime!
            return False
    return True  # If no divisors found, IT’S PRIME!
```

---

### **How It Works (Plain English):**
Imagine you’re checking if **17** is prime:

1. **First, we rule out easy cases:**
   - If the number is **1 or less** → **Not prime** (e.g., 0, 1, 4).
   - If the number is **2** → **Prime!** (2 is the only even prime number).
   - If the number is **even and bigger than 2** (like 4, 6, 8) → **Not prime** (because it’s divisible by 2).

2. **Now, we check divisors:**
   - For **17**, we check numbers from **3 up to √17 (≈4.12)**, but only **odd numbers** (3, 5, etc.).
     - **17 ÷ 3?** No (remainder is 2) → Keep going.
     - **17 ÷ 5?** No (remainder is 2) → **STOP!** No divisors found!

3. **If no divisors divide evenly, the number is prime!**
   - Since **17** isn’t divisible by any number except itself, it’s **prime!**

---

### **Example Runs:**
```python
print(is_prime(7))   # True (7 is prime)
print(is_prime(10))  # False (10 is not prime)
print(is_prime(1))   # False (1 is not prime)
print(is_prime(13))  # True (13 is prime)
print(is_prime(15))  # False (15 is not prime)
```

---

### **Why This Works (Optimized Version):**
- **Faster than checking every number** (e.g., for 100,000, it only checks up to 316).
- **Skips even numbers** (since they can’t be prime except for 2).
- **Stops at the square root** (because if a number has a factor bigger than its square root, it already has a smaller factor).

---
### **Try It Yourself!**
Run the code and test it with different numbers. Want me to explain any part in more detail? 😊