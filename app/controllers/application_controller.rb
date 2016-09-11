class ApplicationController < ActionController::API
  include ActionController::Serialization

  before_action :authenticate_user, except: [:root]

  attr_reader :current_user

  def authenticate_user
   @current_user = User.find_by(id: decoded_auth_token["user_id"]) if decoded_auth_token && user_token?
  end

  def decoded_auth_token
    AuthToken.decode token
  end

  def token
    if request.headers["Authorization"].present?
      request.headers["Authorization"].split(" ").last
    end
  end

  def user_token?
    User.find_by(token: token)
  end
end
