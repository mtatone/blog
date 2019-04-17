class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
  end

  #creates a new post
  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to @post
    else
      render 'new'

    end
  end

  def show
    @post = Post.find(params[:id])
  end
  #security feature built into rails to allow which fields to be accessible
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
