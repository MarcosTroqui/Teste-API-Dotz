#language: pt

@filmes
Funcionalidade: Busca Títulos de Filmes

  Cenario: Buscar Filme
    Dado que eu realize a busca de uma lista de filmes
    Então o sistema retorna com o código "200"