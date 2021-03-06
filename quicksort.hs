
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort [ y | y <- xs, y < x ]
                   ++ [x]
                   ++ quicksort [ y | y <- xs, y >= x ]

main :: IO()
main = mapM_ print $ quicksort "Lorem ipsum dolor sit amet"

