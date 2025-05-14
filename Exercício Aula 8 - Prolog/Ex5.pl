% Fatos

aresta(a, b, 2).
aresta(a, c, 3).
aresta(a, d, 7).
aresta(c, d, 1).
aresta(d, b, 5).

% Regras

total_peso(X, Y, P) :- aresta(X, Y, P).

total_peso(X, Y, P) :-
    aresta(X, Z, P1),
    total_peso(Z, Y, P2),
    P is P1 + P2.
