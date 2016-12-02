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
   @comments = @post.comments
   if @post.update(strong_params) #what does if @post = Post.update(strong_params) do
    redirect_to @post
   else
    render "edit"
    end
  end

  def create
    @post = Post.new(strong_params)
    @comments = @post.comments
    if @post.save
     redirect_to @post
    else
      render "new"
    end
  end


  def strong_params
    params.require(:post).permit(
      :title,
      :body,
      :category_id,
      :id,
      { :comments_attributes => [:body, :id, :_destroy] },
      :tag_ids => []
      )
  end
end

