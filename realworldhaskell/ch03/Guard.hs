fromMaybe defval wrapped =
  case wrapped of
    Nothing -> Nothing
    Just value -> value

    
