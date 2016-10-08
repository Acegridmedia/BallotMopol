class ReportSerializer < ActiveModel::Serializer
  attributes :id, :content, :posted_by, :created_at

  belongs_to :election
  belongs_to :state
  has_many :comments

  def created_at
    object.created_at
  end

   def posted_by
    object.user.username
  end
end
