somaMultiplos:: Int -> Int -> Int -> IO()
somaMultiplos x soma count = do
    n <- readLn :: IO Int
    if n < 0 then do 
        print("Soma: " ++ show(soma))
        print("Qtd no somados: " ++ show(count))
    else if mod n x == 0 then somaMultiplos x (soma + n) (count + 1)
        else somaMultiplos x soma count
    
main:: IO()
main = do
    x <- readLn :: IO Int
    somaMultiplos x 0 0