class V1::ElectionsController < ApplicationController
  skip_before_action :authenticate_user, only: :index

  def index
    elections = Election.all
    render json: { elections: elections }, status: 200
  end
end
