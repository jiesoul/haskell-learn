upcaseFirst (c:cs) = toUpper c -- forgot  ":cs" here

cameCase :: String -> String
cameCase xs = concat (map upcaseFirst (words xs))
