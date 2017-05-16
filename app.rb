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
  @hints = Hint1.all()
  erb(:index)
end

post('/hint1') do
  hint = params.fetch("hint")
  Hint1.create({:name => hint})
end

delete '/clear_all' do
  Player1.delete_all()
  Player2.delete_all()
  Hint1.delete_all()
end
