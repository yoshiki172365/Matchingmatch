class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to app_path(@comment.app.id)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to item_path(@comment.app.id)
  end

private
  def comment_params
    params.require(:comment)
          .permit(:comment).merge(user_id: current_user.id, app_id: params[:app_id])
  end

end
