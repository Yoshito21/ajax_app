class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
    redirect_to action: :index
  end

  def new
  end

  def create
    Post.create(content: params[:content])
  end
end
