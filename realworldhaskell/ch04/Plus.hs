a `plus` b = a + b

data a `Pair` b = a `Pair` b
                  deriving (Show)

-- we can user the constructor either profix or infix
foo = Pair 1 2
bar = True `Pair` "quux"
