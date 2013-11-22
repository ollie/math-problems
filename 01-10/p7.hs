-- Problem 7
-- 10001st prime

-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?

main = do
  let answer = last $ findPrimes 10001
  putStrLn ("And the answer is: " ++ show answer)

nextPrime :: Integral a => a -> a
nextPrime n = findNextPrime (n + 1) where
  findNextPrime n
    | isPrime n = n
    | otherwise = findNextPrime (n + 1)

isPrime :: Integral a => a -> Bool
isPrime 1 = True
isPrime n = findFactors 2 (n `div` 2) where
  findFactors i max
    | i == (max + 1) = True
    | n `mod` i == 0 = False
    | otherwise      = findFactors (i + 1) max

findPrimes :: Integral a => a -> [a]
findPrimes n = findingLoop [1..n] 2 where
  findingLoop []     prime = []
  findingLoop (_:xs) prime = prime : findingLoop xs (nextPrime prime)
