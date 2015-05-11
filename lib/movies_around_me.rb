require 'sinatra/base'

class MoviesAroundMe < Sinatra::Base
  set :public_folder, './app/public'

  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
