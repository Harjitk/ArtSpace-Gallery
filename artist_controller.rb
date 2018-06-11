require('sinatra')
require('sinatra/contrib/all')
require_relative('models/artist')
require_relative('models/exhibit')
also_reload('./models/*')

get '/artists' do
  @artists = Artist.all()
  erb (:index)
end

post '/artists' do
  Artist.new(params).save
  redirect "/artists"
end 

#display a list of artists

get '/artist/new' do #create new artist
  @artist = Artist.all()
  erb(:new)
end

get '/artist/:id/edit' do # edit
  @artist = Artist.find( params[:id] )
  erb( :edit )
end

get '/artist/:id' do # show
  @artist = Artist.find( params[:id] )
  erb( :show )
end

post '/artist/:id' do # update
  Artist.new( params ).update
end

post '/artist/:id/delete' do # delete
  artist = Artist.find( params[:id] )
  artist.delete
  redirect "/artists"
end
