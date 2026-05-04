def is_prime(n: int) -> bool:
    """
    Returns True if n is a prime number, False otherwise.
    Claude's reference implementation for the AI@Home benchmark.
    """
    if n <= 1:
        return False
    if n == 2:
        return True
    if n % 2 == 0:
        return False
    limit = int(n ** 0.5) + 1
    for i in range(3, limit, 2):
        if n % i == 0:
            return False
    return True


if __name__ == "__main__":
    test_cases = [2, 3, 4, 11, 13, 25, 29, 97]
    for n in test_cases:
        print(f"is_prime({n}) = {is_prime(n)}")
