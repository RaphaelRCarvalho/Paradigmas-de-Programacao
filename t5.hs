--1)
addSuffix :: String -> [String] -> [String]
addSuffix x y = [y ++ x | y<-y]

--2)
addSuffix1 :: String -> [String] -> [String]
addSuffix1 _ [] = []
addSuffix1 x (y:ys) = ((y)++ x) : addSuffix1 x (ys)

--3)
countShorts :: [String] -> Int
countShorts [] = 0
countShorts (x:xs) 
	|length(x)<5= 1 + countShorts xs
	|otherwise= 0 + countShorts xs

--4)
countShorts_ :: [String] -> Int
countShorts_ x = length ([x| x<-x ,(length x)<5])

--5)
ciclo :: Int -> [Int] -> [Int]
ciclo 0 _ = []
ciclo x y = y ++ ciclo (x-1) y

--6)
combine :: [Int] -> [String] -> [(Int,String)]
combine [] [] = []
combine (x:xs) (y:ys) = [(x,y)] ++ combine xs ys

--7)
numera :: [String] -> [(Int,String)]
numera [] = []
numera x = reverse ((length x, (last x)) : reverse (numera (init x)))

--8)
--a)Essa função junta os pares da lista x com os ímpares de uma lista y, formando uma tupla: [(2,3), (2,5), (4,3), (4,5)]
--b)Essa função concatena as strings das duas listas: ["lazyfrog","lazydog","bigfrog","bigdog"].
--c)Essa função concatena todas as vogais da string paralalepipedo, separando-a por hífen: a-a-e-e-i-e-o-.

--9)
pairWithAll :: a -> [b] ->[(a,b)]
pairWithAll _ [] = []
pairWithAll x (y:ys) = (x,y) : pairWithAll x ys

crossProduct :: [a] -> [b] -> [(a,b)]
crossProduct _ [] = []
crossProduct [] _ = []
crossProduct (x:xs) y = pairWithAll x y ++ crossProduct xs y

--11)
decompoe1 :: [(a,b)] -> ([a],[b])
decompoe1 [] = ([],[])
decompoe1 x = [(fst(x),snd(x))] : decompoe1 (tail x)

--12)
decompoe2 :: [(a,b)] -> ([a],[b])
decompoe2 [] = ([],[])
decompoe2 x = ([fst x | x<-x],[snd x | x<-x])

--13)
decompoe3:: [(a,b)] -> ([a],[b])
decompoe3 [] = ([],[])
decompoe3 x = (map (fst) x, map (snd) x)