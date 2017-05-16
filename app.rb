require('bundler/setup')
require('pry')
Bundler.require(:default)
require 'pg'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  words = Word.all()
  words = words.shuffle()
  @emptyarray = []
  count = 0
  until count == 25
    @emptyarray.push(words[count])
    count+=1
  end
  erb(:index)
end






















post '/clear_all' do
  clear_all()
  erb :index
end

def clear_all
  Player1.delete_all()
  Player2.delete_all()
  Game.delete_all()
end
