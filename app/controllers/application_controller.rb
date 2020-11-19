class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  # get '/songs' do
  # #should present the user with a list of all songs in the library
  # #each song should be a clickable link to that particular song's show pge
  # end
  # 
  # get '/genres' do
  # #this should present the user with a list of all genres in the library
  # #each genre should be a clickablel link to that particular genre'sshow page
  # end
  # 
  # get '/artists' do
  # #this should present the user with a list of all artists in the library.
  # #each artist should be a clickable link to that particular artist's show page
  # end
  # 
  # get '/songs/:slug' do
  # #any given song's show page should have links to that song's artist and each genre associated with the song.
  # #pay attention to the order of /songs/new and /songs/:slug. the route /songs/new could interpret new asaslugif that controller action isn't defined first.
  # end
  # 
  # get 'artists/:slug' do
  # #any given artist's show page should have links to eachofhisor her songsandgenres
  # end
  # 
  # get '/genres/:slug' do
  #   #any given genre's show page should have links to each oftis artists and songs_controller
  #   #to get the data into your database, youwill want tofigure out how to use your LibraryParser class in the db/seeds/rb rile.
  # end
end
