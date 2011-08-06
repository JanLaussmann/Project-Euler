-- A palindromic number reads the same both ways. 
-- The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

-- Find the largest palindrome made from the product of two 3-digit numbers.

module Main where

isPalindrom :: (Integral a) => a -> Bool
isPalindrom a = (reverse $ show a) == show a

quicksort :: (Ord a) => [a] -> [a]
quicksort []     = []
quicksort (x:xs) = quicksort [a | a <- xs, a <= x] ++ [x] ++ quicksort [a | a <- xs, a > x]

main :: IO ()
main = putStrLn . show . head . reverse $ quicksort [x * y | x <- [100..999], y <- [100..999], isPalindrom (x * y)]
