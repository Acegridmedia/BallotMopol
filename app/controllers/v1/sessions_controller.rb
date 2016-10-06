class V1::SessionsController < ApplicationController
   skip_before_action :authenticate_user, only: :create

  def create
    user = User.find_by(email: session_params[:login_id]) || User.find_by(username: session_params[:login_id])

    if user && user.authenticate(session_params[:password])
      token = user.generate_token
      user.update token: token

      render json: user, status: 201
    else
      render json: { error: "Incorrect username/password" }, status: 401
    end
  end

  def destroy
    current_user.update_attributes token: nil
    render json: { notice: "You are now logged out" }, status: 200
  end

  private

  def session_params
    params.permit(:login_id, :password)
  end
end
