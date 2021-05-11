module Ex where

--Ex1
elem'  :: (Eq a) => a -> [a] -> Bool 
elem' = any . (==)

--Ex2
nub' :: (Eq a) => [a] -> [a]
nub' [] = []
nub' (x:xs)
    | x `elem'` xs = nub' xs
    | otherwise = x : nub' xs

--Ex3
isAsc :: [Int] -> Bool 
isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) = (x <= y) && isAsc (y:xs)

--Ex4
hasPath :: [(Int,Int)] -> Int -> Int -> Bool
hasPath [] x y = x == y
hasPath xs x y
    | x == y = True 
    | otherwise  = let xs' = [(n,m) | (n,m) <- xs, n /= x] in
         or [hasPath xs' m y | (n,m) <- xs, n == x]