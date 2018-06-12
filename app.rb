require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/artist_controller')
require_relative('controllers/exhibit_controller')

get '/' do
  erb(:home)
end


get '/artists' do
  @artists = Artist.all()
  erb (:home)
end
