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

  def update
   @post = Post.find(params[:id])
   if @post.update(strong_params) #what does if @post = Post.update(strong_params) do 
     redirect_to @post
   else
    render "update"
   end  
  end

  def create
  @post = Post.new(strong_params)
   if @post.save
     redirect_to "root"
   else
    render "new"
   end  
  end


  def strong_params
    params.require(:post).permit(:title, :body, :category_id, :id,:tag_ids => [])
  end
end

