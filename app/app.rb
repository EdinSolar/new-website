require 'sinatra'
require 'sinatra/activerecord'

require_relative 'helpers/view'

require_relative 'environments'

require_relative 'models/post'
require_relative 'models/user'
require_relative 'models/role'

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

get '/posts/:id' do
  @post = Post.find(params[:id])
  @title = @post.title
  erb :'posts/show'
end
