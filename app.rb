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
  @hints = Hint.all()
  game = Game.create()
  current_game = game
  erb(:index)
end

post('/hint') do
  hint = params.fetch("hint")
  @game = current_game
  @game.hints.create({:name => hint})
end
