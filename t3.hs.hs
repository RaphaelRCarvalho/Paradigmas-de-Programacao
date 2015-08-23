--1)A função mod encontra o resto da divisão inteira.
isEven :: Int -> Bool
isEven n = mod n 2 == 0

--2)
somaquad :: Int -> Int -> Int
somaquad x y = x*x + y*y

--3)
doubleFirst :: [Int] -> Int
doubleFirst [] = 0
doubleFirst x = (head x) * (head x)

--4)
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = if (head x) == (head y) then True else False

--5)
addMr :: [String] -> [String]
addMr x = map ("Mr."++) x

--6)
contSpace :: String -> Int
contSpace x = length (filter (==' ') x)

--7)
funcMath :: [Double] -> [Double]
funcMath n = map (\n -> 3*n^2 + 2/n + 1) n

--8)
listAge :: [Int] -> [Int]
listAge x = [x | x <- x, x > 45]

test :: Int -> Bool
test x = if (x>45) then True else False

listAge2 :: [Int] -> [Int]
listAge2 x = filter (test) x

--9)
serie :: Double -> [Double] -> Double
serie m n = sum (map (/m) n)

--10)
charFound :: Char -> String -> Bool
charFound c s = any (== c) s

--11)
htmlListItens :: [String] -> [String]
htmlListItens [] = []
htmlListItens x = ("<LI>" ++ (head x) ++ "</LI>") : htmlListItens (tail x)

--12)
--takeWhile (<5) [1,2,3,4,5]
--takeWhile (/= ' ') "Fulana de Tal"
--takeWhile (odd) [1,2,3,4]

--13)
findA :: [String] -> [String]
findA [] = []
findA x = if (last (takeWhile(/= ' ')(head x)))=='a' then (head x) : findA(tail x) else findA(tail x)

aux :: String -> Bool
aux x = if (last x == 'a') then True else False

findA2 :: [String] -> [String]
findA2 x = filter (aux) x