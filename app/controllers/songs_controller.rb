require 'rack-flash'

class SongsController < ApplicationController
  user Rack::Flash

  get 'songs' do
    @songs = Songs.all

    erb:'/songs/index'
  end

end
