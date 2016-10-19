main =
  putStrLn "Greetings! What is your name?"
  getLine >>=
  (\inpStr -> putStrLn $ "Welcomde to haskell, " ++ inpStr ++ "!")
