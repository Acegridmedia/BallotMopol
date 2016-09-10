class V1::UsersController < ApplicationController
  skip_before_action :authenticate_user, only: :create

  def create
    user = User.new(user_params)

    if user.save
      render json: { user: user }, status: 201
    else
      render json: { error: user.errors }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
