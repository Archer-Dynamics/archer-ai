Here’s a **super simple** Python function to check if a number is prime, along with a **beginner-friendly explanation**:

---

### **Python Function:**
```python
def is_prime(num):
    if num <= 1:  # Numbers 1 or smaller are NOT prime
        return False
    for i in range(2, num):  # Check every number from 2 to num-1
        if num % i == 0:     # If divisible by ANY number, it's NOT prime
            return False
    return True  # If no divisors found, it's prime!
```

---

### **How It Works (Plain English):**
Imagine you want to know if **17** is prime. Here’s how the function checks:

1. **First, it rules out small numbers:**
   - If the number is **1 or less**, it’s **not prime** (e.g., 0, 1, 4).

2. **Check every number from 2 up to the number minus 1:**
   - For **17**, it checks:
     - **17 ÷ 2?** No (remainder is 1) → Keep going.
     - **17 ÷ 3?** No → Keep going.
     - ...
     - **17 ÷ 17?** No (but we stop at 16, since we go up to `num-1`).

3. **If any number divides evenly (no remainder), it’s NOT prime:**
   - If **17 ÷ 2 = 8 with no remainder**, it would say **not prime**.
   - But since **17 ÷ 2 = 8.5** (remainder), it keeps checking.

4. **If no divisors are found, the number is prime!**
   - Since **17** isn’t divisible by any number except itself, it’s **prime!**

---

### **Example Runs:**
```python
print(is_prime(7))   # True (7 is prime)
print(is_prime(10))  # False (10 is not prime)
print(is_prime(1))   # False (1 is not prime)
print(is_prime(13))  # True (13 is prime)
```

---

### **Why This Works (But Isn’t the Most Efficient Way):**
- This is **simple but slow** for big numbers (e.g., 1,000,000).
- A **faster version** (shown earlier) only checks up to the **square root** of the number and skips even numbers.

Would you like me to explain the **optimized version** next? 😊