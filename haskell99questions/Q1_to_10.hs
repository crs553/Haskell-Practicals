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


--isPlaindrome
isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' xs  = (head xs) == (last xs) && (isPalindrome' $ init $ tail xs)