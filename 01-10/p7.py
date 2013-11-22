# Problem 7
# 10001st prime

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

def next_prime(n):
    i = n + 1

    while True:
        if is_prime(i):
            return i

        i += 1

def is_prime(n):
    if n == 1:
        return True

    for i in range(2, (n // 2) + 1):
        if n % i == 0:
            return False

    return True

def find_primes(n):
    prime = 2

    for i in range(n - 1):
        prime = next_prime(prime)

    return prime

print(find_primes(10001))
