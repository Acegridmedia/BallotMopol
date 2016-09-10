class State < ApplicationRecord
  has_many :reports
  has_many :lgas

  has_many :polling_units, through: :lga
end
