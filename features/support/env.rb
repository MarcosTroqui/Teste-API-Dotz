require 'httparty'
require 'pry'
require 'cucumber'

$env = (ENV['ENV'] || 'qa')

$filme_url = {
  'qa' => 'https://swapi.dev/api/films/'
}
