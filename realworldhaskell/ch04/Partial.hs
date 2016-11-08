isInAny needle haystack = any inSequence haystack
  where isSequence s = needle `isInfixOf` s

isInAny2 needle haystack = any (\s -> needle `isInfixOf` s) haystack

