class CommentsController < ApplicationController

  def create
  
    comment = Comment.new(comment_params)
    comment.save
    redirect_to :back
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to root_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  def comment_params
    params.permit(:comment, :video_id, :id)
  end

end
