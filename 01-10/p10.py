# Problem 10
# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def next_prime(n=1):
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

def find_primes_below(n):
    primes = []
    prime  = 1

    while prime < n:
        prime = next_prime(prime)

        if prime < n:
            primes.append(prime)

    return primes

print(find_primes_below(2000000))
