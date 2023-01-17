main:- 
read_line_to_string(user_input, Cut1), 
string_chars(Cut1,[Cut|_]),
read_line_to_string(user_input, Frase1),
string_chars(Frase1,Frase),
mySlice(Cut, Frase, Temp),
string_chars(Sliced, Temp),
write(Sliced),halt.

mySlice(_, [], []).
mySlice(L, [L| T], [L,'-'| Str]):- mySlice(L, T, Str).
mySlice(L, [O| T], [O|Str]):- mySlice(L, T, Str).