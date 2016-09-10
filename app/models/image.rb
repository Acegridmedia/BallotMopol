class Image < ApplicationRecord
  belongs_to :report, optional: true
  belongs_to :news, optional: true
end
