require 'sinatra/base'
require "sinatra/reloader" 

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end
    
  get '/' do
    "Testing infrastructure working!"
    erb :index
  end

  get '/play' do
    @name = session[:name]
    @name2 = session[:name2]
    erb :play
  end

  post '/name' do
  session[:name] = params[:name]
  session[:name2] = params[:name2]
  redirect '/play'
  end


  run! if app_file == $0
end