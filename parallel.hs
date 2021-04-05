-- ghc -O2 --make -threaded parallel.hs
import Control.Parallel

main = a `par` b `par` c `pseq` print (a + b + c)
       where
         a = ack 3 10
         b = fac 35
         c = fib 44

fac :: Integer -> Integer
fac 0 = 1
fac n = n * fac (n-1)

ack :: Integer -> Integer -> Integer
ack 0 n = n+1
ack m 0 = ack (m-1) 1
ack m n = ack (m-1) (ack m (n-1))

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
