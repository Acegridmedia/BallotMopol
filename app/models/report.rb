class Report < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :state
  belongs_to :election
  belongs_to :lga, optional: true;

  has_many :images
  has_many :comments

  accepts_nested_attributes_for :images

  # validates :summary, presence: true
  # validates :election_id, presence: true
  # validates :lga_id, presence: true
  # validates :state_id, presence: true

  def self.filter(state_id, lga_id)
    q = state_id || lga_id

    q ? where("state_id = ? or lga_id = ?", q, q) : all
  end
end
