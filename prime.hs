module Main where
n = 100

primes = 2 : f [3,5..] where f (x:xs) = x : f [y | y <- xs,  y `mod` x /= 0]

main = do putStrLn $ show $ takeWhile (< n) primes
