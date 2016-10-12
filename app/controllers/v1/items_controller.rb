class V1::ItemsController < ApplicationController

  def create
    render json: {message: "i am here"}, status: 201
  end

  # def item_params
  #   params.require(:item).permit(:name, :picture)
  # end
end
