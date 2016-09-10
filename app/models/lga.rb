class Lga < ApplicationRecord
  belongs_to :state
  has_many :reports
end
