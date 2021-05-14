module Q11_onwards where


--P14
dupli' :: [b] -> [b]
dupli' = concatMap (replicate 2)


--P15
repli ::  [a] -> Int -> [a]
repli xs i = concatMap (replicate i) xs


--P16
dropEvery :: [b] -> Integer -> [b]
dropEvery = flip $ \n -> map snd . filter ((n/=) . fst) . zip (cycle [1..n])


--P17
split' :: [a] -> Int -> ([a], [a])
split' xs n = (take n xs, drop n xs)


--P18
slice :: [a] -> Int -> Int -> [a]
slice xs i k | i>0 = take (k-i+1) $ drop (i-1) xs
