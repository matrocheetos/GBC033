type Passo = (Int, Int)

-- (a) --
fibo2 :: Int -> Passo
fibo2 n
    | n==0 = (0,0)
    | n==1 = (0,1)
    | otherwise = (fibo2(n-3) + fibo2(n-2), fibo2(n-2) + fibo2(n-1))

-- (b) --
fibo2 :: Int -> Passo -> Passo
fibo2 n
    | n==0 = (0,0)
    | n==1 = (0,1)
    | otherwise =   (fibo2(n-4) + fibo2(n-3), fibo2(n-3) + fibo2(n-2))
                    (fibo2(n-3) + fibo2(n-2), fibo2(n-2) + fibo2(n-1))

-- (c) --
fibo2 :: Int -> Passo
fibo2 n
    | n==0 = (0,0)
    | n==1 = (0,1)
    | otherwise = (fibo2(n-3) + fibo2(n-2), fibo2(n-2) + fibo2(n-1))

-- (d) --
fibo2 :: Int -> Passo
fibo2 n
    | n>0 = (fibo2(n-2) + fibo2(n-1), n)