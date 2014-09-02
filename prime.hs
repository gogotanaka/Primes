-- ghc --make prime.hs
module Main where

primes_simple = 2 : f [3,5..] where f (x:xs) = x : f [y | y <- xs,  y `mod` x /= 0]

primes_fast = 2:f [3] [3,5..]
    where f (x:xs) ys = let (ps, qs) = span (< x^2) ys
                        in  ps ++ f (xs ++ ps) [z | z <- qs, mod z x /= 0]

main = do putStrLn $ show $ takeWhile (< 100) primes_simple
          putStrLn $ show $ takeWhile (< 100) primes_fast

