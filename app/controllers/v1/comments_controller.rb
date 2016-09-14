class V1::CommentsController < ApplicationController
  def create
    comment = current_user ? current_user.comments.new(comment_params) : Comment.new(comment_params)

    if comment.save
      render json: comment, status: 201
    else
      render json: { error: "comment could not be created" }, status: 422
    end
  end

  def index
    comments = Comment.where(report_id: params[:report_id])
    if comments
      render json: comments, status: 200
    end
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:report_id, :details)
  end
end
