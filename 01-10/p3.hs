-- Problem 3
-- Largest prime factor

-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143?

main = do
  let answer = lastPrimeFactor 600851475143
  putStrLn ("And the answer is: " ++ show answer)

lastPrimeFactor :: Integral a => a -> a
lastPrimeFactor = last . primeFactors

primeFactors :: Integral a => a -> [a]
primeFactors n = findPrimeFactors n 2 [] where
  findPrimeFactors n p factors
    | n == p    = p : factors
    | rem == 0  = p : findPrimeFactors res 2 factors
    | otherwise = findPrimeFactors n (nextPrime p) factors
    where
      res = n `div` p
      rem = n `mod` p

nextPrime :: Integral a => a -> a
nextPrime n = findNextPrime (n + 1) where
  findNextPrime n
    | isPrime n = n
    | otherwise = findNextPrime (n + 1)

isPrime :: Integral a => a -> Bool
isPrime x = null $ filter (\y ->  x `mod` y == 0) $ takeWhile (\y -> y * y <= x) [2..]
