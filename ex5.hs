import System.Random



--Exercise 1

cutoffat :: Eq a => a -> [a] -> [a]
cutoffat  = undefined

--Exercise 2

gencollatzdist :: (Int -> Int) -> Int -> Int
gencollatzdist f x = undefined

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
approxsqrtTwo = undefined

-- Exercise 3(b)
genFloat::Float -> [Float]
genFloat = undefined


approxsqrt :: Float -> Int -> Float
approxsqrt = undefined

--Exercise 4

countocc :: Char -> String -> Int
countocc c = undefined



--Exercise 5

data BTree a = Leaf a | Node a (BTree a) (BTree a)
     deriving (Show,Eq)

testtree1 = Node 5 (Node 4 (Leaf 1) (Leaf 2)) (Node 3 (Leaf 3) (Leaf 4))
testtree2 = Node 3 (Leaf 76) (Node 3 (Leaf 8) (Leaf 9))

--(a)
treesum :: Num a => BTree a -> a 
treesum = undefined

--(b)
paths :: BTree a -> [[a]] 
paths = undefined
