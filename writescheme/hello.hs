import System.Environment

main :: IO ()
main = do args <- getArgs
          let a = args !! 0
              b = args !! 1
              c = args !! 2
          putStrLn ("Hello, " ++ a ++ b ++ c)
