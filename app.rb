require 'sinatra'
require 'sass'

enable :sessions

helpers do
  def logged_in?
    session[:user]
  end
end

get "/" do
  haml :index
end

post '/login' do
  if params[:username] == params[:password]
    session[:user] = params[:username]
    redirect to '/dashboard'
  else
    redirect back
  end
end

get '/logout' do
  @message = 'You have been logged out'
  session.clear
  haml :index
end

get "/dashboard" do
  @username = session[:user]
  haml :dashboard
end
