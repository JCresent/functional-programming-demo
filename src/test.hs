-- Feel free to experiment with Haskell in this file!
-- This will not affect your assignment's grade
addNums :: Int -> Int
addNums 0 = 0
addNums n = n + addNums (n - 1)


-- Add values taken to the given power of each number in the list 
sumPowers :: Int -> [Int] -> Int
sumPowers _ [] = 0
sumPowers power (x : xs) = (x ^ power) + sumPowers power xs

sumPowers2 = sumPowers 2
sumPowers3 = sumPowers 3

sum1 = sumPowers2 [1, 2, 3, 4] -- 30
sum2 = sumPowers3 [1, 2, 3, 4] -- 10

main = print (sum1, sum2)