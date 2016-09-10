class User < ApplicationRecord
  has_many :reports

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,
    message: "invalid. Please use a different email"
  }
  validates :password, presence: true
end
