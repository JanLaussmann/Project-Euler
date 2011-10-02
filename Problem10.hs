-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

-- Find the sum of all the primes below two million.

module Main where

primesToG m = 2 : sieve [3,5..m]  where
  sieve (p:xs) 
    | p*p > m = p : xs
    | True    = p : sieve (xs `minus` [p*p,p*p+2*p..])
	
minus (x:xs) (y:ys) = case (compare x y) of 
  LT -> x : minus  xs  (y:ys)
  EQ ->     minus  xs     ys 
  GT ->     minus (x:xs)  ys
minus xs _  = xs

sum' :: [Integer] -> Integer -> Integer
sum' [] acc     = acc
sum' (x:xs) acc = sum' xs (x+acc)

main :: IO ()
main = putStrLn . show $ sum' (primesToG 2000000) 0

