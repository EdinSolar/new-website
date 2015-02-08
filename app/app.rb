require 'sinatra'
require 'sinatra/activerecord'

require_relative 'environments'

get '/' do
  erb :index
end

get '/index' do
  erb :index
end
