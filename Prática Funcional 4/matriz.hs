main:: IO()
main = do
    n <- readLn:: IO Int
    m <- readLn:: IO Int
    print (criaMatriz n m)

criaMatriz:: Int -> Int -> [[Int]]
criaMatriz n m = criaLinha n m 1 m

criaLinha:: Int -> Int -> Int -> Int -> [[Int]]
criaLinha 0 m i f = []
criaLinha n m i f = [[i..f]] ++ criaLinha (n-1) m (f+1) (f+m)