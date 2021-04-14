seleciona :: [[Int]] -> [[Int]]
seleciona [[]] = [[]]
seleciona (x:xs) = [ tail y | y <- (x:seleciona xs), head x < 4 ]
