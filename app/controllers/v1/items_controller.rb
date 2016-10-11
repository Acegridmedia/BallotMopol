class V1::ItemsController < ApplicationController

  def create
    byebug
    render json: {message: "i am here"}, status: 201
  end

  def

  # def item_params
  #   params.require(:item).permit(:name, :picture)
  # end
end
