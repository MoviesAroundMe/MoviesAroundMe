require 'sinatra/base'

class MoviesAroundMe < Sinatra::Base
  get '/' do
    '<select><option value="home">Home</option></select>'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
