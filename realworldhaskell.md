# Real World Haskell 

## 1. Getting Started

haskell 环境

* ghc 快速生成本地代码的优化编译器
* ghci 交互式解释器和调试器
* runghc 不需要编译，像脚本一样执行haskell代码的程序

命令行输入ghci 进入交互模式

```haskell
Prelude> set prompt "ghci> "
ghci>
```

/= 表示不等于

not 表示否

Lists 使用方括号，分割用逗号，在结束的括号前不能有逗号。所有的元素必须是相同类型。

[1..10] 中的 .. 表示枚举。

++ 连接两个 lists 

(:) 添加一个元素到list的前面，: 的每个参数必须是元素，第二个参数必须是lists

字符串用双引号包含。

putStrLn 打印字符串。

单字符用单引号。

字符串实际上是单字的list。

空字符串是 ""。

:m 加载模块


## 2 Types and Functions

每个表达式和函数都有一个类型。

三个方面：强类型，静态，自动推断

一些常用基本类型：
* Char 值表示一个Unicode 字符
* Bool 值表示一个布尔逻辑值。True 和 False
* Int 有符号，固定宽度整数值。32位上是32位宽，64位上是64位宽。haskell仅保证比28位宽
* Integer 有符号无限大小整数。不常使用，因为性能和空间占用大，但是不会溢出，能提供精确的值。
* Double 的值表示浮点数。始终是64位宽度。

expression :: MyType 表示 expression 有类型 MyType, 如果你忽略 :: 和之后的类型，编译器将自动推断

调用函数是函数名跟着它的参数。不使用括号或逗号分组或分割参数；仅仅是函数名后依次跟着参数就足够了。

head 返回list 的首个元素

tail 返回除了首个的所有元素

多态类型使用 type variable，必须用小写字母开头。

## 3 Defining Types, Streamlining Functions

使用 data 定义新的数据类型。类型构造子名必须是大写字母开头。值构造子也是大写字母开头。

类型构造子和值构造子可以是相同的名字，但是本质上是不同的。

type 定义一个 type synonym。 新名字在等号左边，现存的名字是右边。两个名字是相同的类型，只是为了更可读。

模式匹配应该覆盖全部可能。


