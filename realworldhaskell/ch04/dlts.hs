import Data.List (isPrefixOf)

dlts :: String -> [String]

dlts = folder step [] . lines
  where step l ds
          | "#define DLT_" `isPrefixOf` l = secondWord l : ds
          | otherwise                     = ds
        secondWord = head . tail . words
