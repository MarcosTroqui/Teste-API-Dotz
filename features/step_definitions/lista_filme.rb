# frozen_string_literal: true
busca_filme = BuscaFilme.new

Dado('que eu realize a busca de uma lista de filmes') do
  busca_filme.get_filme
end

Então('o sistema retorna com o código {string}') do |string|
  busca_filme.status
end
