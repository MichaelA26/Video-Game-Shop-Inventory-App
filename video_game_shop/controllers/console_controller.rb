require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/console.rb')
also_reload('../models/*')

get '/consoles' do
  @consoles = Console.all()
  erb (:"consoles/index")
end

get '/consoles/:id' do
  @consoles = Console.find(params['id'].to_i)
  erb(:"consoles/show")
end
