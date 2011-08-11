-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

-- What is the 10001st prime number?

module Main where

sieve :: [Int] -> [Int] -> [Int]
sieve []     b = b
sieve (a:as) b = sieve c (a:b)
  where c = [x | x <- as, x `rem` a /= 0]


main :: IO ()
--main = putStrLn . show . length $ sieve [2..100000] []
main = putStrLn . show . (!! 10000) . reverse $ sieve [2..1000000] []

