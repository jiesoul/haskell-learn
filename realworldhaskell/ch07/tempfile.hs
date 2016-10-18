import System.IO
import System.Directory(getTemporaryDirectory, removeFile)
import System.IO.Error(catch)
import Control.Exception(finally)

-- The main entry point
main :: IO ()
main = withTempFIle "myTemp.txt" myAction

{- The guts of the program. Called with the path and handle of a temporary
   file. When this function exits, that file will be closed and deleted
   because myAction was called from withtempfile. -}

myAction :: FilePath -> Handle -> IO ()
myAction tempname temph =
  do -- Start by displaying a greeting on the terminal
    putStrLn "Welcome to tempfile.hs"
    putStrLn $ "I have a temporary file at " ++ tempname

    -- Let's see what the initial position is
    pos <- hTell temph
    putStrLn $ "My initial postion is " ++ show pos

    -- Now, write some data to temporary file
    let tempdata = show [1..10]
    putStrLn $ "Write one line containing " ++
               show (length tempdata) ++ " bytes: " ++
               tempdata

    hPutStrLn tempdata

    -- Get our new position. This does't actually modify pos
    -- in memory, but makes the name "pos" correspond to a different
    -- value for the remainder of the "do" block
    pos <- hTell temph
    putStrLn $ "After writing, my position is " ++ shwo pos

    -- seek to the begining of the file and dispaly it
    putStrLn $ "The file content is:"
    hSeek temph AbsoluteSeek 0

    -- hGetContent performs a lazy read of entry the file
    c <- hGetContents temph

    -- Copy the file byte-to-byte for stdout. follow by \n
    putStrLn c

    -- Let's also dispaly it as Haskell literal
    putStrLn $ "Which could be expressed as Haskell literal:"
    print c

{- This function takes two parameters: a filename pattern -}
withTempFIle :: String -> (FilePath -> Handle -> IO a) -> IO a
withTempFIle pattern func =
  do
    tempdir <- catch (getTemporaryDirectory) (\_ -> ".")
    (tempfile, temph) <- openTempFile tempdir pattern

    finally (func tempfile temph)
            (do hClose temph
                removeFile tempfile)
