require 'sinatra/base'
require "sinatra/reloader" 
require_relative "./lib/health"

class Battle < Sinatra::Base
  enable :sessions

  before do
    session[:health] = Health.instance
  end

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

  post '/attack' do
    session[:health].decrease
    redirect '/play'
  end

  post '/name' do
  session[:name] = params[:name]
  session[:name2] = params[:name2]
  redirect '/play'
  end  


  run! if app_file == $0
end