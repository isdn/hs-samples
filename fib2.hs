-- as-pattern / pattern binding

fib :: [Integer]
fib@(1:tfib) = 1 : 1 : [ a+b | (a,b) <- zip fib tfib ]

main :: IO()
main = mapM_ print $ take 20 fib

