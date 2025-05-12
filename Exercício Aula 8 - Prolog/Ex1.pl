% Fatos

aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).
frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).
funcionario(pedro, ufrj).
funcionario(ana_paula, puc).
funcionario(carlos, puc).

% Regras

aluno_do_professor(X,Y) :- aluno(X,A), professor(Y,A).

universidade(X,Y) :- frequenta(X,Y).
universidade(X,Y) :- funcionario(X,Y).