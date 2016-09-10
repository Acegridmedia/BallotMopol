class V1::ElectionsController < ApplicationController
  def index
    elections = Election.all
    render json: { elections: elections }, status: 200
  end
end
