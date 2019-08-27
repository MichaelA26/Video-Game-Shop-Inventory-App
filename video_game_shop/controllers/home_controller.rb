require('sinatra')
require('sinatra/contrib/all')
also_reload('../models/*')

get '/home' do
  erb(:index)
end
