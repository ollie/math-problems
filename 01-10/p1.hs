-- Problem 1
-- Multiples of 3 and 5

-- If we list all the natural numbers below 10 that are multiples of 3 or 5,
-- we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

main = do
  let answer = sumMultiplesBelow 1000
  putStrLn ("And the answer is: " ++ show answer)

sumMultiplesBelow :: Integral a => a -> a
sumMultiplesBelow = sum . multiplesFor

multiplesFor :: Integral a => a -> [a]
multiplesFor x = multiples [1..(x - 1)] []

multiples []     acc = acc
multiples (x:xs) acc
  | x `mod` 3 == 0 = multiples xs (x:acc)
  | x `mod` 5 == 0 = multiples xs (x:acc)
  | otherwise      = multiples xs acc
