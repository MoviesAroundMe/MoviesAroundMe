require 'sinatra/base'
require "sinatra/cross_origin"
require 'open-uri'

class MoviesAroundMe < Sinatra::Base

  register Sinatra::CrossOrigin
  enable :cross_origin

  options '/*' do
    response["Access-Control-Allow-Headers"] = "origin, x-requested-with, content-type"
  end

  get '/' do
    erb :index
  end

  get '/postcode' do
     erb :postcode
  end

  post '/postcode/:post_code' do
    open("http://moviesapi.herokuapp.com/cinemas/find/#{params[:post_code]}")
  end

  get '/movies' do
    "<form method='post' action='/movies'> <input type='text' name='cinema_id'></form>"
  end

  post '/movies' do
    movie_list = open("http://moviesapi.herokuapp.com/cinemas/#{params[:cinema_id]}/showings")
    p movie_list
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
