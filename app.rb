require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/artist_controller')
require_relative('controllers/exhibit_controller')
require("pry")

get '/' do
  @exhibits  = Exhibit.all
  @artists = Artist.all
  erb(:home)
end
