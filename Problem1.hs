-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
-- The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

module Main where

mod3Or5AreZero :: (Integral a) => a -> Bool
mod3Or5AreZero a
 | a `mod` 3 == 0 = True
 | a `mod` 5 == 0 = True
 | otherwise = False

main :: IO ()
main = putStrLn . show . sum $ filter mod3Or5AreZero [1..999]
