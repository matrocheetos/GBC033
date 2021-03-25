-- (a) --
prodIntervalo :: Int -> Int -> Int
prodIntervalo m n
    | m==n = 0
    | n>0 && m<n= m*prodIntervalo(m+1)(n-1)*n

-- (b) --
fatorial :: Int -> Int
fatorial n
    | n==0 = 1
    | otherwise = n * prodIntervalo 1 n-1