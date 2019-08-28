require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/game.rb')
require_relative('../models/console.rb')
also_reload('../models/*')

get '/games' do
  @games = Game.all()
  erb (:"game/index")
end

get '/games/new_game' do
  erb(:new)
end

get '/games/update_game' do
  @console = Console.all
  @games = Game.all
  @game = @games.first
  erb(:edit)
end

post '/games' do
  Game.new(params).save
  redirect to '/games'
end

get '/games/:id' do
  @games = Game.find(params['id'])
  erb(:show)
end

post '/games/:id' do
  game = Game.new(params)
  game.update
  redirect to "/games/#{params['id']}"
end

post '/games/:id/delete' do
  game = Game.find(params['id'])
  game.delete
  redirect to '/games'
end
