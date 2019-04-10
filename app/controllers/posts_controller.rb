class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new  
  end

  def create
    @post = Post.new(post_params)

    if @post.save(post_params)
      redirect_to @post
    else 
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def map
    render "map"
  end

  private

  def post_params 
    params.require(:post).permit(:title, :detail, :avatar)
  end
end
