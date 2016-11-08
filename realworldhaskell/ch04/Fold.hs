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
