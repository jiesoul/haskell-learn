name2reply :: String -> String
name2reply name =
  "Please to meet you, " ++ name ++ ".\n" ++
  "Your name contains " ++ charcount ++ " charaters."
  where charcount = show (length name)

main :: IO ()
main = do
       putStrLn "Greeting once again. what is your name?"
       inputStr <- getLine
       let outStr = name2reply inputStr
       putStrLn outStr
