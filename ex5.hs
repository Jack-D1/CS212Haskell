import System.Random



--Exercise 1

cutoffat :: Eq a => a -> [a] -> [a]
cutoffat c (x:xs)
 | c == x = [x]
 | otherwise = x:cutoffat c xs 

--Exercise 2

gencollatzdist :: (Int -> Int) -> Int -> Int
gencollatzdist _ 1 = 0
gencollatzdist f x
 | f x == 1 = 1
 | otherwise = 1 + gencollatzdist f (f x)


collatz::Int -> Int
collatz n 
        | mod n 2 == 0 = div n 2
        | otherwise = (3 * n + 1) 

-- gencollatzdist (1+) (-4) == 5
-- gencollatzdist (collatz) 1 == 0
--Exercise 3(a)


genFloatTwo::[Float]
genFloatTwo = randomRs (0,2) (mkStdGen 42)

approxsqrtTwo :: Int -> Float
approxsqrtTwo n = undefined

-- Exercise 3(b)
genFloat::Float -> [Float]
genFloat f = randomRs (0,f) (mkStdGen 42)


approxsqrt :: Float -> Int -> Float
approxsqrt = undefined

--Exercise 4

countocc :: Char -> String -> Int
countocc c s = foldr (\char count -> if char == c then (count + 1) else count) 0 s 


--Exercise 5

data BTree a = Leaf a | Node a (BTree a) (BTree a)
     deriving (Show,Eq)

testtree1 = Node 5 (Node 4 (Leaf 1) (Leaf 2)) (Node 3 (Leaf 3) (Leaf 4))
testtree2 = Node 3 (Leaf 76) (Node 3 (Leaf 8) (Leaf 9))

--(a)
treesum :: Num a => BTree a -> a 
treesum (Leaf x) = x
treesum (Node x left right) = x + treesum left + treesum right

--(b)
paths :: BTree a -> [[a]] 
paths (Leaf x)= [[x]]
paths (Node x left right) = map (x:) (paths left ++ paths right)
