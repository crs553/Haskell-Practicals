-- Q1
myLast :: [c] -> c
myLast =  head . reverse


-- P2
myButLast :: [c] -> c
myButLast = head . tail . reverse


--P3
elementAt :: [c] -> Int  -> c
elementAt xs n = xs !! (n - 1)


--P4
myLength :: [a] -> Int
myLength = sum . map(const 1)


--P5
myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []


--P6
isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' xs  = head xs == last xs && isPalindrome' (init $ tail xs)


--P7
data NestedList a = Elem a | List [NestedList a]
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x


--P8
compress :: Eq a => [a] -> [a]
compress (x:ys@(y:_))
    | x == y = compress ys
    | otherwise = x : compress ys
compress ys = ys


--P9
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)


encode :: Eq b => [b] -> [(Int, b)]
encode = enc . pack
    where enc = map (\ x -> (length x, head x))

