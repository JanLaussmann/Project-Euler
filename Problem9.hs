-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
-- a2 + b2 = c2
-- For example, 32 + 42 = 9 + 16 = 25 = 52.

-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

module Main where

pythagorasTripel1000 :: (Integral a) => (a,a,a) -> Bool
pythagorasTripel1000 (a,b,c)
  | a < b && b < c && a*a + b*b == c*c && a+b+c == 1000 = True
  | otherwise = False
  
tripleProduct :: (Integral a) => (a,a,a) -> a
tripleProduct (a,b,c) = a * b * c

input = [(a,b,c) | a <- [1..1000], b <- [1..1000], c <- [1..1000]]

main :: IO ()
main = putStrLn . show . tripleProduct . head $ filter pythagorasTripel1000 input

