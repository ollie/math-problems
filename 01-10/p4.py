# Problem 4
# Largest palindrome product

# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def reversed_product(x, y):
    product_int     = x * y
    product_string  = str(product_int)
    reversed_string = product_string[::-1]
    reversed_int    = int(reversed_string)

    return product_int, reversed_int

def find_palindromes(x, y):
    palindromes = []
    product_string, reversed_string = reversed_product(x, y)
    original_x = x

    while y > 0:
        if product_string == reversed_string:
            palindromes.append(product_string)

        x -= 1

        if x == 0:
            x = original_x
            y -= 1

        product_string, reversed_string = reversed_product(x, y)

    return palindromes

palindromes = find_palindromes(999, 999)
print( max(palindromes) )
