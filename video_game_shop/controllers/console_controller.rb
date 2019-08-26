require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/console.rb')
also_reload('../models/*')

get '/consoles' do
  @console = Console.all()
  erb (:"console/index")
end

get '/consoles/:id' do
  @console = Console.find(params['id'].to_i)
  erb(:"console/show")
end
