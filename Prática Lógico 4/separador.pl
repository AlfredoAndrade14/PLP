main:- read(Votos),separa(Votos,Votos1,Votos2),writeln(Votos1),writeln(Votos2),halt.

separa([],[],[]).
separa([[N,1]|B],[N|V1],V2):- separa(B,V1,V2).
separa([[N,2]|B],V1,[N|V2]):- separa(B,V1,V2).