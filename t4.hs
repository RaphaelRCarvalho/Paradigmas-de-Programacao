--1)
eleva2 :: [Int] -> [Int]
eleva2 [] = []
eleva2 x = (head x)^2 : eleva2 (tail x)


--2)
contido :: Char -> String -> Bool
contido _ [] = False
contido x y 
	| x == (head y) = True
	| otherwise = contido x (tail y)

--3)

semVogais :: String -> String
semVogais [] = []
semVogais (x:xs) 
	| (x) == 'a' = semVogais (xs)
	| (x) == 'e' = semVogais (xs)
	| (x) == 'i' = semVogais (xs)
	| (x) == 'o' = semVogais (xs)
	| (x) == 'u' = semVogais (xs)
	| (x) == 'A' = semVogais (xs)
	| (x) == 'E' = semVogais (xs)
	| (x) == 'I' = semVogais (xs)
	| (x) == 'O' = semVogais (xs)
	| (x) == 'U' = semVogais (xs)
	| otherwise = x : semVogais (xs)

--4)
translate :: [(Double,Double)]->[(Double,Double)]
translate [] = []
translate (x:xs) = (fst(x)+2, snd(x)+2) : translate(xs)

--5)
geraTabela' :: Int -> [(Int,Int)]
geraTabela' 0 = []
geraTabela' x = reverse((x,x^2) : reverse(geraTabela' (x-1)))

