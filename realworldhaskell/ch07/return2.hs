import Data.Char(toUpper)

isYes :: Striing -> Bool
isYes inputStr = (toUpper . head $ inputStr) == 'Y'

isGreen :: IO Bool
isGreen =
  do putStrLn "Is green your favorite color??"
     inputStr <- getLine
     retrun (isYes inputStr)

     
