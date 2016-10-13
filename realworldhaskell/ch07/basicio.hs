main = do
       putStrLn "Greeting! what is your name?"
       inputStr <- getLine
       putStrLn $ "Welcome to Haskell, " ++ inputStr ++ "!"

       
