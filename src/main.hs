-- Write printAMessage here
printAMessage :: Show a => a -> IO ()
printAMessage x = putStrLn (show x)

-- Write division here
division :: Double -> Double -> Maybe Double
division _ 0 = Nothing
division x y = Just (x / y)

-- Write factorial here
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Write factList here
factList :: Int -> [Int]
factList n = [factorial x | x <- [0..n]]

-- Write merge here
merge :: [Int] -> [Int] -> [Int]
merge [] [] = []
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
    | x < y = x : merge xs (y : ys)
    | otherwise = y : merge (x : xs) ys

main = print(merge [1, 3, 5] [2, 4, 6])
    
    
    -- TEST DIVISION
    -- main = case division 5 0 of
        -- Nothing -> putStrLn "Division by zero"
        -- Just result -> printAMessage result