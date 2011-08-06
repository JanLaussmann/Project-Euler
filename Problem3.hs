-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?

module Main where

largestPrimeFactor :: (Integral a) => a -> Maybe a
largestPrimeFactor a
 | a <= 1    = Nothing
 | a `mod` b == 0 && isPrime b = Just b
 | otherwise = largestPrimeFactor' a (b - 1) 
  where b = round . sqrt $ fromIntegral a

largestPrimeFactor' :: (Integral a) => a -> a -> Maybe a
largestPrimeFactor' a b
 | a <= 1    = Nothing
 | b <= 1    = Nothing
 | a `mod` b == 0 && isPrime b = Just b
 | otherwise = largestPrimeFactor' a (b - 1)

isPrime :: (Integral a) => a -> Bool
isPrime a
 | a <= 1    = False
 | otherwise = isPrime' a (round . sqrt $ fromIntegral a)

isPrime' :: (Integral a) => a -> a -> Bool
isPrime' a b
 | a <= 1         = False
 | b <= 1         = True
 | a `mod` b == 0 = False
 | otherwise      = isPrime' a (b - 1)

main :: IO ()
main = putStrLn . show $ largestPrimeFactor 600851475143
