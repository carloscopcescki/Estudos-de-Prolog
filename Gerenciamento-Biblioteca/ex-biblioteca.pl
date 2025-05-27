% Fatos

livro('O Senhor dos Aneis', tolkien, fantasia).
livro('O Hobbit', tolkien, fantasia).
livro('Dom Casmurro', machado_de_assis, romance).
livro('Memorias Postumas de Bras Cubas', machado_de_assis, romance).
livro('It', stephen_king, terror).
livro('O Iluminado', stephen_king, terror).
livro('1984', george_orwell, distopia).
livro('A Revolucao dos Bichos', george_orwell, distopia).
livro('Jogos Vorazes', suzanne_collins, romance).
livro('Percy Jackson e os Olimpianos', rick_riordan, aventura).
livro('Laranja Mecânica', anthony_burgess, acao).

% Regras

livro_por_autor(Livro, Autor) :- livro(Livro, Autor, _).
livros_do_genero(Genero, Livro) :- livro(Livro, _, Genero).
mesmo_autor(Livro1, Livro2) :-
    livro(Livro1, Autor, _),
    livro(Livro2, Autor, _),
    Livro1 \= Livro2.
