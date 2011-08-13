-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

-- What is the 10001st prime number?

module Main where

sieve :: [Int] -> [Int]
sieve (x:xs) = x : sieve [y | y <- xs, y `rem` x > 0] 

main :: IO ()
main = putStrLn . show . (!! 10000) $ sieve [2..]
