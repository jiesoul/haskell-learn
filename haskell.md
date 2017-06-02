# haskell 笔记

* 纯函数式语言，lazy 惰性， 静态类型，支持类型推导(type inference)，

* ghci 进入命令行模式　:l filename 加载文件， :r filename 重载文件。

* 函数 函数名 + 空格 + 参数 + 空格 + 参数 ... 小括号分割 

* lists 存储相同类型的数据结构；
  * ++ 把两个list放在一起；
  * : 把元素放在 list 前面；
  * !! 通过索引拿到元素，索引从 0 开始；
  * list 可以嵌套；
  * 如果包含西能比较，那么 list 也可以比较，> >= < <= 在字典顺序上比较，首先第一个比，如果第一个相等，比较第二个；
  * head 得到第一个元素；
  * tail 除了第一个余下的；
  * last 最后一个； 
  * init 除了最后一个；
  * head tail last init 作用在空 list 上报错
  * length list长度
  * null 判断是否为空
  * reverse 反转 list
  * take 得到一定数量的 list 的部分
  * drop 删除一定数量的 list 
  
* Int 有界 Integer 无界
* 
```haskell
ghci> [3,2,1] > [2,1,0]
True
ghci> [3,2,1] > [2,10,100]
True
ghci> [3,4,2] > [3,4]
True
ghci> [3,4,2] > [2,4]
True
ghci> [3,4,2] == [3,4,2]
True 
```
