
fizzbuzz :: Integer -> String
fizzbuzz n = extract $ (n^4 `mod` 15) `lookup` [(1, show n), (6, "Fizz"), (10, "Buzz"), (0, "FizzBuzz")]
             where
               extract (Just x) = x
               extract Nothing = undefined

main :: IO()
main = mapM_ putStrLn $ map fizzbuzz [1..100]
