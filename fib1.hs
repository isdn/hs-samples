
fib :: [Integer]
fib = 1 : 1 : [ a+b | (a,b) <- zip fib (tail fib) ]

main :: IO()
main = mapM_ print $ take 20 fib
