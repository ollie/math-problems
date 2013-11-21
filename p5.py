# Problem 5
# Smallest multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def number(n):
    while True:
        if is_divisible_by_1_to_20(n):
            return n

        n += 1

def is_divisible_by_1_to_20(n):
    for i in range(1, 11):
        if n % i != 0:
            return False

    return True

print(number(20))
