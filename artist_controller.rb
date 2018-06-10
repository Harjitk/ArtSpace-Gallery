require('sinatra')
require('sinatra/contrib/all')
require_relative('models/artist')
require_relative('models/exhibit')
also_reload('./models/*')

get '/artists' do
  @artists = Artist.all()
  erb (:index)
end

#display a list of artists

get '/artists/new' do
  @artists = Artist.all()
  erb(:new)
end
