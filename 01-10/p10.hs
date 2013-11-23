-- Problem 10
-- Summation of primes

-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.

main = do
  let answer = sum $ findPrimesBelow 2000000
  putStrLn ("And the answer is: " ++ show answer)

nextPrime :: Integral a => a -> a
nextPrime n = findNextPrime (n + 1) where
  findNextPrime n
    | isPrime n = n
    | otherwise = findNextPrime (n + 1)

isPrime :: Integral a => a -> Bool
isPrime x = null $ filter (\y ->  x `mod` y == 0) $ takeWhile (\y -> y * y <= x) [2..]

findPrimesBelow :: Integral a => a -> [a]
findPrimesBelow n = findingLoop 2 where
  findingLoop prime
    | prime < n = prime : findingLoop (nextPrime prime)
    | otherwise = []
