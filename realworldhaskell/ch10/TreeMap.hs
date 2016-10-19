data Tree a = Node (Tree a) (Tree b)
            | Leaf a
            deriving (Show)

treeLengths (Leaf s) = Leaf (length s)
treeLengths (Node l r) = Node (treeLengths l) (treeLengths r)


treeMap :: (a -> b) -> Tree a -> Tree b
treeMap f (Leaf a) = Leaf (f a)
treeMap f (Node l r) = Node (treeMap l) (treeMap r)

class Functor f where
  fmap :: (a -> b) -> f a -> f b

instance Functor Tree where
  fmap = treeMap

instance Functor [] where
  fmap = map
