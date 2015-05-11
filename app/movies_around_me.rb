require 'sinatra/base'
require "sinatra/cross_origin"

class MoviesAroundMe < Sinatra::Base
  register Sinatra::CrossOrigin
  enable :cross_origin

  get '/' do
    erb :index
  end

  get '/postcode' do
    erb :postcode
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
