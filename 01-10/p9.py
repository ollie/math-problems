# Problem 9
# Special Pythagorean triplet

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

import functools
import operator

def prod(factors):
    return functools.reduce( operator.mul, factors, 1 )

def is_pythagorean_triplet(a, b, c):
    return a ** 2 + b ** 2 == c ** 2

def find_special_triplet():
    for c in range(1, 1000):
        for b in range(1, c):
            for a in range(1, b):
                if is_pythagorean_triplet(a, b, c) and a + b + c == 1000:
                    return (a, b, c)

triplet = find_special_triplet()
print(triplet)
print(prod(triplet))
