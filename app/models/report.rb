class Report < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :state
  belongs_to :election
  belongs_to :lga, optional: true;

  has_many :images

  accepts_nested_attributes_for :images

  # validates :summary, presence: true
  # validates :election_id, presence: true
  # validates :lga_id, presence: true
  # validates :state_id, presence: true
end
