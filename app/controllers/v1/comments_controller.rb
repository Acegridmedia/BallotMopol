class V1::CommentsController < ApplicationController
  before_action :set_report, only: [:create, :destroy]

  def create
    if @report
      comment = current_user ? current_user.comments.new(comment_params) : Comment.new(comment_params)
      comment.report = @report

      if comment.save
        render json: comment, status: 201
      else
        render json: { message: "comment could not be created" }, status: 422
      end

    else
      render json: { message: "no report found" }, status: 422
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

  def set_report
    @report = Report.find_by(id: params["report_id"])
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
