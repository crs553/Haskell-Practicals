module Ex2 where

maxi :: Int -> Int -> Int
maxi x y
    | x > y  = x
    | otherwise = y

sumsq :: Int -> Int
sumsq 1 = 1
sumsq n = n*n + sumsq (n-1)

sumsq' :: Int -> Int
sumsq' n = sum [xs ^ xs | xs <- [1..n]]

fibn :: Int -> Int
fibn 0 = 1
fibn 1 = 1
fibn n = fibn (n-1) + fibn (n-2)

smallestFactor :: Int->Int
smallestFactor n = nextFactor n 2
    where nextFactor n x = if mod n x == 0 then x else nextFactor n (x+1)

-- a datatype for months
data Month
  = January
  | February
  | March
  | April
  | May
  | June
  | July
  | August
  | September
  | October
  | November
  | December
 deriving ( Eq, Show )

-- daysInMonth month year returns the days in the month in the year
daysInMonth :: Month -> Integer -> Integer
daysInMonth January   year = 31
daysInMonth February  year
  | leap year              = 29
  | otherwise              = 28
daysInMonth March     year = 31
daysInMonth April     year = 30
daysInMonth May       year = 31
daysInMonth June      year = 30
daysInMonth July      year = 31
daysInMonth August    year = 31
daysInMonth September year = 30
daysInMonth October   year = 31
daysInMonth November  year = 30
daysInMonth December  year = 31

-- leap year approximates whether year is a leap year
leap :: Integer -> Bool
leap year = year `mod` 4 == 0

-- a datatype for dates
data Date = Date{ year :: Integer, month :: Month, day :: Integer }

-- validDate date checks whether date is a valid date, regarding
-- numbers of days in the month
validDate :: Date -> Bool
validDate date = 1 <= day date
                   && day date <= daysInMonth (month date) (year date)

repli :: Integer -> String ->String 
repli 0 x = []
repli n x = x ++ repli (n-1) x

repli' :: Int -> String ->String
repli' n x =  take n (repeat x) >>= id

repli'' :: Int -> String -> String
repli'' n xs= replicate n xs >>= id

flatten :: [a] -> [a]
flatten = map concat