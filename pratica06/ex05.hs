a = (\y -> y) ((\z -> z) (\z -> z)) (\w -> w) 5
-- (\y -> y) (\z -> z) (\w -> w) 5
-- (\y -> y) (\z -> z) 5
-- (\y -> y) 5
-- resultado: 5

b = ((\f -> (\x -> f(f x))) (\y -> y * y)) 3
-- (\y -> y * y) (3 * 3)
-- (9 * 9)
-- resultado: 81

c = ((\f -> (\x -> f(f x))) (\y -> y + y)) 5
-- (\y -> y + y) (5 + 5)
-- 10 + 10
-- resultado: 20

d = (\x -> (\y -> x + y) 5) ((\y -> y - 3) 7)
-- (\x -> (\y -> x + y) 5) ((\y -> 7 - 3))
-- (\x -> (\y -> x + y) 5) 4)
-- 5 + 4
-- resultado: 9

e = (((\f -> (\x -> f(f(f x)))) (\y -> (y * y))) 2 )
-- ((\f -> (\x -> f(f(f x)))) (\y -> (2 * 2)))
-- (\f -> (\x -> f(f(2 * 2))))
-- (\f -> (\x -> f(4 * 4)))
-- (\f -> (\x -> 16 * 16))
-- resultado: 256

f = (\x -> \y -> x + ((\x -> x - 3) y)) 5 6
-- (\x -> \y -> 5 + ((\x -> x - 3) 6))
-- (\x -> \y -> 5 + (\x -> 6 - 3))
-- (\x -> \y -> 5 + 3)
-- resultado: 8
