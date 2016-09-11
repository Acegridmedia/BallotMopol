class User < ApplicationRecord
  has_many :reports
  has_many :reports

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,
    message: "invalid. Please use a different email"
  }

   def generate_token
    payload = { user_id: id }
    AuthToken.encode(payload)
  end
end
