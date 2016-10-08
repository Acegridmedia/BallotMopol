class Comment < ApplicationRecord
  belongs_to :report, optional: true
  belongs_to :news, optional: true
  belongs_to :user, optional: true

  validates :content, presence: true
end
