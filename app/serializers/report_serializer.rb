class ReportSerializer < ActiveModel::Serializer
  attributes :id, :content, :comments, :created_at, :time

  belongs_to :election
  belongs_to :state

  def created_at
    object.created_at.strftime("%Y-%m-%d")
  end

  def time
     object.created_at.strftime("%I:%M %p")
  end

end
