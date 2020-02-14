
-- Exercise 1 (a)

checksum::Int->Int->Int->Bool
checksum a b c = (a + b == c)

-- Exercise 1 (b)
higherchecksum::(Int->Int) -> Int->Int->Int->Bool
higherchecksum f a b c = (f a + f b == f c)

examplefunc::Int->Int
examplefunc x = x * x

truetest1b = higherchecksum examplefunc 3 4 5
falsetest1b = higherchecksum examplefunc 2 2 3 == False

--Exercise 2

notdivisible :: Int -> Int -> Bool
notdivisible a 0 = False
notdivisible a b = a `rem` b /= 0


-- Exercise 3

list = [x | x<-[0..1000],True]

--Exercise 3(a)
oddlist = [x | x<-[0..1000], x `mod` 2 /= 0]

--Exercise 3(b)
sqlist = [x | x<-[0..10000], x*x <= 50000]

-- Exercise 4(a)

squarefact:: Int -> Int
squarefact a = product[1..a] * product[1..a]