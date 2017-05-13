require('bundler/setup')
require('pry')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
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
