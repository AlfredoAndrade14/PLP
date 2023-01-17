copa(1930,"Uruguai","Argentina").
copa(1934,"Italia","Tchecoslovaquia").
copa(1938,"Italia","Hungria").
copa(1950,"Uruguai","Brasil").
copa(1954,"Alemanha","Hungria").
copa(1958,"Brasil","Suecia").
copa(1962,"Brasil","Tchecoslovaquia").
copa(1966,"Inglaterra","Alemanha").
copa(1970,"Brasil","Italia").
copa(1974,"Alemanha","Holanda").
copa(1978,"Argentina","Holanda").
copa(1982,"Italia","Alemanha").
copa(1986,"Argentina","Alemanha").
copa(1990,"Alemanha","Argentina").
copa(1994,"Brasil","Italia").
copa(1998,"Franca","Brasil").
copa(2002,"Brasil","Alemanha").
copa(2006,"Italia","Franca").
copa(2010,"Espanha","Holanda").
copa(2014,"Alemanha","Argentina").
copa(2018,"Franca","Croacia").

main:- 
read(A),copa(A,C,V),
write("Campeao: "), writeln(C),
write("Vice: "), write(V), halt.