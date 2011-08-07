-- The sum of the squares of the first ten natural numbers is,
-- 1^2 + 2^2 + ... + 10^2 = 385

-- The square of the sum of the first ten natural numbers is,
-- (1 + 2 + ... + 10)^2 = 55^2 = 3025

-- Hence the difference between the sum of the squares of the first ten natural numbers 
-- and the square of the sum is 3025 - 385 = 2640.


-- Find the difference between the sum of the squares of the first one hundred natural 
-- numbers and the square of the sum.

module Main where

sumOfSquares :: (Integral a) => [a] -> a
sumOfSquares a = sum $ map square a

squareOfSum :: (Integral a) => [a] -> a
squareOfSum a = square $ sum a

square :: (Integral a) => a -> a
square x = x * x

main :: IO ()
main = putStrLn . show $ squareOfSum [1..100] - sumOfSquares [1..100]
