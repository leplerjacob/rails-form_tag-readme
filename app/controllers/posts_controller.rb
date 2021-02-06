class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

# Two errors arose after including POST request in resources-only array and creating the action #create here. This occured after hitting submit button on form
# ActionController::InvalidAuthenticityToken in PostsController#create
# ActionController::InvalidAuthenticityToken

end
