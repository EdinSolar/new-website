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

get '/posts' do
  @posts = Post.order("created_at DESC")
  @title = "All posts"
  erb :'posts/index'
end
