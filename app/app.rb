require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'erubis'
require 'raven'

require_relative 'helpers/view'

require_relative '../config/environments'
require_relative '../config/config'

require_relative 'models/post'
require_relative 'models/user'
require_relative 'models/role'

enable :sessions

use Raven::Rack

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


get '/posts/new' do
  @post = Post.new
  @title = "New Post"

  erb :'posts/new'
end

post '/posts/new' do
  @post = Post.new(params[:post])
  if @post.valid?
    @post.save
    redirect "posts/#{@post.id}", notice: 'New post submitted'
  else
    redirect 'posts/new',
      error: 'Post could not be submitted. Please make sure neither the title nor the body are blank.'
  end
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  @title = @post.title

  erb :'posts/show'
end
