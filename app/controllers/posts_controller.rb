class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @post = Post.all
  end

  def create
  @post = Post.new(strong_params)
   if @post.save
     redirect_to @post
   else
    render "new"
   end  
  end

  def strong_params
    params.require(:post).permit(:title, :body, :category_id, :tag_ids => [])
  end
end

