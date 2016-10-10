main = do
  putStrLn "Please enter a Double:"
  inputStr <- getLine
  let inputDouble = (read inputStr) :: double
  putStrLn ("Twice" ++ show inputDouble ++ " is " ++ show (inputDouble * 2))
