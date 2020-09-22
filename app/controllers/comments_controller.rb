class CommentsController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!  

  def create
    @comment = @post.comments.create(comments_params)
    @comment.save
    redirect_to @post
  end

  def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to @post
  end

   private
      def set_post
          @post = Post.find(params[:post_id])
      end

       def comments_params
          params.required(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
      end
end