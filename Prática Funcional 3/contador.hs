main:: IO()
main = do 
    entrada <- getLine
    print (show(length (words entrada)))