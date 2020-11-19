class ArtistsController < ApplicationController

  get '/artists' do
  # #this should present the user with a list of all artists in the library.
  # #each artist should be a clickable link to that particular artist's show page
    @artists = Artist.all
    erb: 'artists/index'
  end

end
