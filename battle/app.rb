require "sinatra/base"

class Battle < Sinatra::Base
  enable :sessions
  #   get '/' do
  #     "Testing infrastructure working!"
  #   end

  get "/" do
    erb(:index)
  end

  post "/names" do
    # p params
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get "/play" do
    # p params
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  run! if app_file == $0
end
