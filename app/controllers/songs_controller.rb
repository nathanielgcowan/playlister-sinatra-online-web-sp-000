require 'rack-flash'

class SongsController < ApplicationController
  use Rack::Flash

  get 'songs' do
    @songs = Songs.all
    erb:'/songs/index'
  end

end
