-- Problem 5
-- Smallest multiple

-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

main = do
  let answer = smallestMultiple 20
  putStrLn ("And the answer is: " ++ show answer)

smallestMultiple :: Integral a => a -> a
smallestMultiple n = foldl1 lcm [1..n]

{-
smallestMultiple :: Integral a => a -> a
smallestMultiple n
  | isDivisibleBy n [1..20] = n
  | otherwise               = smallestMultiple (n + 1)

isDivisibleBy :: Integral a => a -> [a] -> Bool
isDivisibleBy n [] = True
isDivisibleBy n (x:xs)
  | n `mod` x /= 0 = False
  | otherwise      = isDivisibleBy n xs
-}
