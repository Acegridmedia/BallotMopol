class V1::StatesController < ApplicationController
  skip_before_action :authenticate_user, only: :index

  def index
    states = State.all
    render json: states, status: 200
  end
end
