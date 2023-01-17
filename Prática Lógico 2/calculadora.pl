main:- read(X), calcula(X, 0).

calcula((0, _), T):- write(T), halt.
calcula((+, N), T):- read(X), R is T + N, calcula(X, R).
calcula((-, N), T):- read(X), R is T - N, calcula(X, R).
calcula((*, N), T):- read(X), R is T * N, calcula(X, R).
calcula((/, N), T):- read(X), R is T / N, calcula(X, R).