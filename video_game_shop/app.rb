require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/console_controller')
require_relative('controllers/game_controller')

get '/' do
  erb( :index )
end
