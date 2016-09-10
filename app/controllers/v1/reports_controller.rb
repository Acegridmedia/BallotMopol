class V1::ReportsController < ApplicationController
  def index
    render json: { error: "No report yet" }, status: 404
  end

  def create
    report = Report.new(report_params)

    if bucketlist.save
      render json: bucketlist, status: 200
    else
      render json: bucketlist.errors, status: 422
    end
  end

  private

  def report_params
    params.permit(:name)
  end
end
