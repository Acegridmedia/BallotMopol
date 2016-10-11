class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :posted_by, :created_at

  def user_id
    object.user.id if object.user
  end

  def posted_by
    object.user.username  if object.user
  end
end
