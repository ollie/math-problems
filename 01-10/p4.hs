-- Problem 4
-- Largest palindrome product

-- A palindromic number reads the same both ways. The largest palindrome made
-- from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

--main = do
--  let answer = lastPrimeFactor 600851475143
--  putStrLn ("And the answer is: " ++ show answer)

Doesn't work.

{-
reversedProduct :: (Integral a, Show a) => a -> a -> (a, Integer)
reversedProduct x y = (productInt, reversedInt)
  where
    productInt     = x * y
    productString  = show productInt
    reversedString = reverse productString
    reversedInt    = read reversedString :: Integer

findPalindromes :: (Show a) => a -> a -> [a] -> [a]
--findPalindromes :: Integer -> Integer -> [Integer] -> [Integer]
findPalindromes x y palindromes
  | x <= 0 || y <= 0 = palindromes
  | x >  y && productString == reversedString = productString : findPalindromes (x - 1) y palindromes
  | x <= y && productString == reversedString = productString : findPalindromes x (y - 1) palindromes
  | x > y     = findPalindromes (x - 1) y palindromes
  | otherwise = findPalindromes x (y - 1) palindromes
  where
    (productString, reversedString) = reversedProduct x y
-}
