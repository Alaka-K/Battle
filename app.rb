require 'sinatra/base'
require "sinatra/reloader" 

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
    
  get '/' do
    "Testing infrastructure working!"
    erb :index
  end

  post '/name' do
  @name = params[:name]
  @name2 = params[:name2]
  erb :play
  end


  run! if app_file == $0
end