class User < ApplicationRecord
  has_many :reports
  has_many :comments

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true

   def generate_token
    payload = { user_id: id }
    AuthToken.encode(payload)
  end
end
