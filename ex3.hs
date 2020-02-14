myLength::[a] -> Int
myLength [] = 0
myLength [x] = 1
myLength (x:xs) = 1 + myLength xs

myTake::Int->[a]->[a]
myTake 0 _  = []
myTake 1 (x:xs) = [x] 
myTake n (x:xs) = x:(myTake (n-1) xs)

--Ex 1(a)
checkprod::(Int,Int) -> Int ->Bool
checkprod (a,b) i
 | a > 0 && b > 0 && a * b <= i = True
 | otherwise = False 

--Ex 1(b) 
smallerprod::Int -> [(Int,Int)]
smallerprod n = [(x,y)| x <- [1..n], y <- [1..x], x*y <=n] 

-- Ex 2(a)
prime :: Int -> Bool
prime 1 = False
prime n = (myLength [x | x <- [2 .. n-1], mod n x == 0]) == 0

-- Ex 2(b)
primes::[Int]
primes = [x | x <- [1..], prime x]

-- Ex 3
myprefix::String->String->Bool 
myprefix s ss 
 | myLength ss < myLength s = False
 | otherwise = (myTake (myLength s) ss) == s

-- Ex 4
removeRep :: String -> String
removeRep [] = []
removeRep [x] = [x]
removeRep (x1:x2:xs)
 | x1==x2 = removeRep(x2:xs)
 |otherwise = x1:removeRep(x2:xs) 


-- Ex 5
vecSqDist :: [Int] -> [Int] -> Int
vecSqDist [] [] = 0
vecSqDist _ [] = -1
vecSqDist [] _ = -1
vecSqDist (x:xs) (y:ys)
 | myLength (x:xs) /= myLength (y:ys) = -1
 | otherwise = (x-y)^2 + vecSqDist xs ys 



