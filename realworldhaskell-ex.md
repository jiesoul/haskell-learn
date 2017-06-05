# Real World Haskell Exercises

## 1.1

```haskell
Prelude> :set prompt "ghci> "
ghci> 5 + 8
13
ghci> 3 * 5 + 8
23
ghci> 2 + 4
6
ghci> (+) 2 4
6
ghci> sqrt 16
4.0
ghci> succ 6
7
ghci> pred 9
8
ghci> pred 8
7
ghci> sin (pi / 2)
1.0
ghci> truncate pi
3
ghci> round 3.5
4
ghci> round 3.4
3
ghci> floor 3.7
3
ghci> ceiling 3.3
4
```

## 1.2

```haskell
ghci> let x = 1
ghci> :show bindings
it :: Integral b => b = _
x :: Num t => t = _
```
