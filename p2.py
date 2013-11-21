# Problem 2
# Even Fibonacci numbers

# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

fibs  = []
total = 0
i     = 0

while True:
    if i == 0 or i == 1:
        fib = 1
    else:
        fib = fibs[i - 1] + fibs[i - 2]

    if fib > 4000000:
        break

    fibs.append(fib)

    if fib % 2 == 0:
        total += fib

    i += 1

print('Total is:', total)
