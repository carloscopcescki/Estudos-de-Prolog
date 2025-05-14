% fatos

posicao(a,5,5).
posicao(b,7,5).
posicao(c,2,3).
posicao(d,1,1).
posicao(e,6,5).
posicao(f,12,7).
posicao(g,8,4).
posicao(h,5,6).
posicao(i,10,9).

% regras

distancia(J, K, D) :- posicao(J, X1, Y1), posicao(K, X2, Y2),
    			DX is abs(X2 - X1),
    			DY is abs(Y2 - Y1),
    			D is DX + DY.
