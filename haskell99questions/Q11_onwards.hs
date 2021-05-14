module Q11_onwards where

--P14
dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = x : x : dupli xs

dupli' :: [b] -> [b]
dupli' = concatMap (replicate 2)
