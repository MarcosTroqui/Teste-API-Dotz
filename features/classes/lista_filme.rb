# frozen_string_literal: true

class BuscaFilme
    def get_filme
      # Armazenando o response para obter informacoes em outros métodos
      $response = HTTParty.get(
        $filme_url[$env],
        headers: { 'Content-Type' => 'application/json' }
      )
  
       $filmes = []
       response = $response.parsed_response["results"]
       response.each do |filme|
        lista_filme = filme["title"]
       $filmes << lista_filme
       end
       puts $filmes
    end
  
    def status
      puts "Response code: #{$response.code}"
      raise ArgumentError if $response.code != 200
    end
  end
  