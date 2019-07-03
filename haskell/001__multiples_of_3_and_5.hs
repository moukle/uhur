-- Problem 1

-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

-- Find the sum of all the multiples of 3 or 5 below 1000.

isDivisbleBy :: Integer -> Integer -> Bool
n `isDivisbleBy` m = n `mod` m == 0

isDivisbleBy3or5 :: Integer -> Bool
isDivisbleBy3or5 n = any (n `isDivisbleBy`) [3,5]

main = do
    let div =  filter (isDivisbleBy3or5) [1..1000]
    print(sum div)