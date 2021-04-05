
fizzbuzz :: Integer -> String
fizzbuzz n 
       | n `mod` 15 == 0 = "FizzBuzz"
       | n `mod` 3 == 0 = "Fizz"
       | n `mod` 5 == 0 = "Buzz"
       | otherwise = show n

main :: IO()
main = printAll $ map fizzbuzz [1..100]
       where
         printAll [] = return ()
         printAll (x:xs) = putStrLn x >> printAll xs
