class V1::ReportsController < ApplicationController
  def index
    reports = Report.all
    render json: { reports: reports }, status: 200
  end

  def create
    report = Report.new(report_params)

    if report.save
      render json: report, status: 201
    else
      render json: report.errors, status: 422
    end
  end

  private

  def report_params
    params.require(:report).permit(:summary, :state_id, :lga_id, :election_id, images_attributes: [:link])
  end
end
