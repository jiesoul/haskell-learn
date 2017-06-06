foldr :: (a -> b -> b) -> b -> [a] -> b

foldr step zero (x:xs) = step x (foldr step zero xs)
foldr _    zero []     = zero

filter :: (a -> Bool) -> [a] - [a]
filter p [] = []
filter p (x:xs)
  | p x = x : filter p xs
  | otherwise = filter p xs

myFilter p xs = folder step [] xs
  where step x ys | p x       = x : ys
                  | otherwise = ys

foldl' _ zero [] = zero
foldl' step zero (x:xs) =
  let new = step zero x
  in new `seq` foldl' step new xs

hiddenInside x y = someFunc (x `seq` y)

-- incorrect
hiddenByLet x y z = let a = x `seq` someFunc y
                        in anotherFunc a z

-- conrrect
onTheOutSide x y = x `seq` someFunc y

chained x y z = x `seq` y `seq` someFunc z

badExpression step zero (x:xs) =
  seq (step zero x)
      (badExpression step (step zero x) xs)

strictPair (a,b) = a `seq` b `seq` (a,b)

strictLList (x:xs) = x `seq` x : strictLList xs
strictLList []     = []
