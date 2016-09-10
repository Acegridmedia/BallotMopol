class V1::StatesController < ApplicationController
  def index
    states = State.all
    render json: { states: states }, status: 200
  end
end
