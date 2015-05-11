require 'sinatra/base'

class MoviesAroundMe < Sinatra::Base
  get '/' do
    'Hello MoviesAroundMe!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
