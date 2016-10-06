class V1::UsersController < ApplicationController
  skip_before_action :authenticate_user, only: :create

  def create
    user = User.new(user_params)

    if user.save
      token = user.generate_token
      user.update token: token

      render json: user, status: 201
    else
      render json: { error: "user could not be created" }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :phone_number, :password)
  end
end
