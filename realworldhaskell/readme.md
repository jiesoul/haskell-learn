# note

## ch01 start

* ghc 编译器
* ghci 解释器
* runghc 运行程序

ghci导入模块 

```haskell
:module + Data.Ratio
```

Lists

```haskell
ghci> [1, 2, 3, 4]
[1, 2, 3, 4]

ghci> []
[]

ghci> [True, False, "testing"] 
error 不同类型

ghci>  [1..10]
[1,2,3,4,5,6,7,8,9,10]

ghci> [1.0,1.25..2.0]
[1.0,1.25,1.5,1.75,2.0]

ghci> [3, 1, 3] ++ [3, 7] 
[3, 1, 3, 3, 7]
```

Strings and characters

```haskell
ghci> "This is a string."
"This is a string."


```
