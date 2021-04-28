-- Q1
myLast :: [a] -> [a]
myLast [] = []
myLast (x : []) = [x]
myLast _ = []