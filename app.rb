require('bundler/setup')
require('pry')
Bundler.require(:default)
require 'pg'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
current_game = nil

get('/') do
  words = Word.all()
  words = words.shuffle()
  @emptyarray = []
  count = 0
  until count == 25
    @emptyarray.push(words[count])
    count+=1
  end
  game = Game.create()
  current_game = game
  erb(:index)
end

post('/hint') do
  @game = current_game
  hint = params.fetch("hint")
  @game.hints.create({:name => hint})
end

patch('/game') do
  @game = current_game
  @game.update({:finished => true})
end
