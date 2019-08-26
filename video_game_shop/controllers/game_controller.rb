require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/game.rb')
also_reload('../models/*')

get '/games' do
  @games = Game.all()
  erb (:"game/index")
end

get '/games/:id' do
  @games = Game.find(params['id'].to_i)
  erb(:"game/show")
end
