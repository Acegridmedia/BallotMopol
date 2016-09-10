class State < ApplicationRecord
  has_many :reports
  has_many :lgas
end
