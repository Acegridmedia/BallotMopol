class Report < ApplicationRecord

  belongs_to :user
  belongs_to :state
  belongs_to :election
  belongs_to :lga

  has_many :images

  validates :summary, presence: true
  validates :election_id, presence: true
  validates :lga_id, presence: true
  validates :state_id, presence: true
end
