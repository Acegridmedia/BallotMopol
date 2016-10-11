class V1::ReportsController < ApplicationController
  def index

    reports = Report.filter(params["state_id"], params["lga_id"], params["election_id"]).order("id": "DESC").page(params[:page].to_i)
    render json: reports, status: 200
  end

  def create
    report =  current_user.reports.new(report_params) || Report.new(report_params)

    if report.save
      # SocialShare.new(report)
      render json: report, status: 201
    else
      render json: { message: "could not be created"}, status: 422
    end
  end

  def show
    report = Report.find_by(id: params[:id])

    if report
      render json: report, include: ['comments'], status: 200
    else
      render json: { error: "Report does not exist" }, status: 404
    end
  end

  private

  def report_params
    params.require(:report).permit(:content, :state_id, :lga_id, :election_id)
  end
end
#.order("id DESC")
