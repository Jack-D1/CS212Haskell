--Exercise 1

countocc :: Ord a => a -> [a] -> Int
countocc c s 
 | null s = 0
 | head s == c = 1 + countocc c (tail s)
 | otherwise = countocc c (tail s)


--Exercise 2

data Nat = Zero | Nxt Nat
   deriving Show

--Exercise 2(a)
absNat :: Int -> Nat
absNat 0 = Zero
absNat a  = if a < 0 then Nxt (absNat(a + 1)) else Nxt (absNat(a - 1))



--Exercise 2(b)

mymult::Nat->Nat->Nat
mymult (Nxt Zero) x = x
mymult x (Nxt Zero) = x
mymult (Nxt x) y = myadd (mymult x y) y 

myadd:: Nat -> Nat -> Nat
myadd (Zero) x = x
myadd (Nxt x) y = Nxt (myadd x y)



--Exercise 3
--(a)
insert :: Ord b => (a -> b) -> a -> [a] -> [a]
insert _ x [] = [x] 
insert f x (y:ys)
 | f y > f x = x:y:ys
 | otherwise = y:(insert f x ys)



--(b) 
inssort :: Ord b => (a -> b) -> [a] -> [a]
inssort f [] = []
inssort f (x:xs) = insert f x (inssort f xs)

--(c) Order a list of strings according to the occurences of the given character
sortwords :: Char -> [String] -> [String]
sortwords c s = inssort (countocc c) s



type Position = (Int,Int)
data Step = L | R | U | D

--Ex 4(a)

move :: Step -> Position -> Position
move L (p1,p2) = (p1-1,p2)
move R (p1,p2) = (p1+1,p2)
move U (p1,p2) = (p1,p2+1)
move D (p1,p2) = (p1,p2-1)
-- move L (3,4) == (2,4)
-- move U (0,0) == (0,1)

--Ex 4(b)

type Route = [Step]

positions :: Route -> Position-> [Position]
positions [] (p1,p2) = [(p1,p2)]
positions (x:xs) (p1,p2) = (p1,p2):(positions xs (move x (p1,p2))) 

--positions [L,R,L,L,U] (0,0) == [(0,0),(-1,0),(0,0),(-1,0),(-2,0),(-2,1)]
