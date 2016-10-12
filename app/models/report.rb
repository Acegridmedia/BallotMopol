class Report < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :state
  belongs_to :election
  belongs_to :lga, optional: true;

  has_many :images
  has_many :comments

  accepts_nested_attributes_for :images

  scope(
    :filter,
    lambda do |state_id, lga_id, election_id|
      q = state_id || lga_id || election_id

      q ? where("state_id = ? or lga_id = ? or election_id = ?", q, q, q) : all
    end
  )

  scope(
    :page,
    lambda do |page = 1|
      offset = 20 * (1 - 1)
      offset(offset).limit(20)
    end
  )

end

