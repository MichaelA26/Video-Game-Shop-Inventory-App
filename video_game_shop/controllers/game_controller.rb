require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/game.rb')
also_reload('../models/*')

get '/games' do
  @zombies = Game.all()
  erb ( :"games/index" )
end

get '/games/:id' do
  @game = Game.find(params['id'].to_i)
  erb(:"games/show")
end
