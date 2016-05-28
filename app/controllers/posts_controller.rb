class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    Post.find(params[:id]).update(post_params)
    redirect_to posts_path
  end


  def post_params
    params.require(:post).permit(:title, :description, :image)
  end

end