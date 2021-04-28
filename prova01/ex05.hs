dicionario :: [String]
dicionario = ["arara","arreio","haskell", "puxa","peixe","pixar","pixe", "vaca","vacuo","velho","vermelho","vicio"]

representante :: String -> [String] -> [String]
representante [] _ = []
representante _ [] = []
representante (s:ss) (d:ds)
    | elem s d && (representante ss [d]) == [d] = d:(representante (s:ss) ds)
    | otherwise = representante (s:ss) ds
