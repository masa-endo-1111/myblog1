class PostsController < ApplicationController
  before_action :set_post, :only => [:show]

  def index
    @posts = Post.page(params[:page]).per(5)
  end

  def show
    @post = Post.find(params[:id])

    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end
end