# Problem 3
# Largest prime factor

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

def prime_factors(n):
    factors = []
    p       = 2

    while True:
        if p == n:
            factors.append(p)
            break

        div = n // p
        rem = n % p

        if rem == 0:
            factors.append(p)
            n = div
            p = 2
            continue

        p = next_prime(p)

    return factors

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
        if n % 2 == 0:
            return False

    return True

print( 13195, prime_factors(13195) )
print( 600851475143, prime_factors(600851475143) )
