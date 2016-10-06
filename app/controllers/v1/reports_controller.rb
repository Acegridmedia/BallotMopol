class V1::ReportsController < ApplicationController
  def index
    reports = Report.filter(params["state_id"], params["lga_id"])
    render json: reports, status: 200
  end

  def create
    report = current_user ? current_user.reports.new(report_params) : Report.new(report_params)

    if report.save
      # SocialShare.new(report)
      render json: report, status: 201
    else
      render json: report.errors, status: 422
    end
  end

  def show
    report = Report.find_by(id: params[:id])

    if report
      render json: report, include: ['comments', 'election', 'state'], status: 200
    else
      render json: { error: "Report does not exist" }, status: 404
    end
  end

  private

  def report_params
    params.require(:report).permit(:details, :state_id, :lga_id, :election_id, images_attributes: [:link])
  end
end
