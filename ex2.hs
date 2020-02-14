import Data.Char

offset :: Int
offset = ord 'a' - ord 'A'


--Ex 1
myrepeat :: Char -> [Char]
myrepeat c = [c] ++ myrepeat c 



-- Exercise 2 (a)

myisDigit::Char -> Bool
myisDigit c = if ord c >= ord '0' && ord c <= ord '9' then True else False 

-- Exercise 2 (b)/

mytoLower::Char -> Char
mytoLower c 
 | ('A' <= c) && (c <= 'Z') = chr(ord c + offset) 
 | otherwise = c

--Ex 3
circlesurface :: Float -> Float
circlesurface r = (pi * (r*r))

-- Ex 4
cycleinc::[Integer] -> [Integer]
cycleinc l = l ++ cycleinc [x+1| x <- l]


-- Ex 5

compLetters :: Char -> Char -> Char
compLetters a b
 | mytoLower a <= mytoLower b = a
 | otherwise = b