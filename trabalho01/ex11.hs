unica_ocorrencia :: Int -> [Int] -> Bool
unica_ocorrencia n lista
    | not (elem n lista) = False                                -- [x,y..]
    | n == (head lista) && elem n (tail lista) = False          -- [n,n..]
    | n == (head lista) && not (elem n (tail lista)) = True     -- [n,x,y]
    | otherwise = unica_ocorrencia n (tail lista)               -- [x,n,y], n /= (head lista)
