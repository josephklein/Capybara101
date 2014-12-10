require 'sinatra'
require 'sass'

get "/" do
  haml :index
end

