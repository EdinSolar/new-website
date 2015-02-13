require 'sinatra'
require 'sinatra/activerecord'

require_relative 'environments'
require_relative 'models/post'

get '/' do
  erb :index
end

get '/index' do
  erb :index
end
