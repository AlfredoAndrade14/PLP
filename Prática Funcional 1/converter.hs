import Text.Printf

converte:: Float -> String -> String -> IO()
converte t m1 m2
    |m1 == m2 = printf "%.1f %s(s) e igual a %.1f %s(S)" t m1 t m2
    |m1 == "HORA" && m2 == "MINUTO" = printf "%.1f HORA(s) e igual a %.1f MINUTO(S)" t (t*60)
    |m1 == "HORA" && m2 == "SEGUNDO" = printf "%.1f HORA(S) e igual a %.1f SEGUNDO(S)" t (t*60^2)
    |m1 == "MINUTO" && m2 == "SEGUNDO" = printf "%.1f MINUTO(s) e igual a %.1f SEGUNDO(S)" t (t*60)
    |m1 == "MINUTO" && m2 == "HORA" = printf "%.1f MINUTO(S) e igual a %.1f HORA(S)" t (t / 60)
    |m1 == "SEGUNDO" && m2 == "MINUTO" = printf "%.1f SEGUNDO(S) e igual a %.1f MINUTO(S)" t (t / 60)
    |m1 == "SEGUNDO" && m2 == "HORA" = printf "%.1f SEGUNDO(S) e igual a %.1f HORA(S)" t (t / 60^2)
    |otherwise = print "Voce digitou algo errado"

main:: IO()
main = do
    tempo <- readLn:: IO Float
    medida1 <- getLine
    medida2 <- getLine
    converte tempo medida1 medida2 