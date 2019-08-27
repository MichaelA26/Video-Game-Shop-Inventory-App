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

get '/games/new' do
  erb(:new)
end

post '/games' do
  @game = Game.new(params)
  @game.save()
  erb(:create)
end

get '/games/:id/edit' do
  @game = Game.find(params[:id])
  erb(:edit)
end

post '/games/:id' do
  Game.new(params).update
  redirect to '/games'
end

post '/games/:id/delete' do
  game = Game.find(params[:id])
  game.delete()
  redirect to '/game'
end
