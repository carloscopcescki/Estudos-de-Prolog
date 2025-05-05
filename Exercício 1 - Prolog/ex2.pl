% Fatos
genitor(carlos,joao).
genitor(maria,joao).
genitor(joao,elisa).
genitor(suzana,elisa).
genitor(jose,carlos).
genitor(gertrudes,carlos).
genitor(jose,allan).
genitor(allan,mike).
genitor(judite,jose).
homem(carlos).
homem(joao).
homem(jose).
homem(allan).
mulher(maria).
mulher(elisa).
mulher(suzana).
mulher(judite).
mulher(gertrudes).

% Regras

avo(X,Y) :- genitor(X,A), genitor(A,Y).
irmaos(X,Y) :- genitor(A,X), genitor(A,Y), X \= Y.
pai(X,Y) :- genitor(X,Y), homem(X).
mae(X,Y) :- genitor(X,Y), mulher(X).
conjuge(X,A) :- genitor(X,Y), genitor(A,Y).
tio(X,Y) :- homem(X), genitor(A,Y), irmaos(X,A).
tia(X,Y) :- mulher(X), genitor(A,Y), irmaos(X,A).
primos(X,Y) :- genitor(A,X), genitor(B,Y), irmaos(A,B), X \= Y.
