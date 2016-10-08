class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :posted_by, :created_at

  def user_id
    object.user.id
  end

  def posted_by
    object.user.username
  end
end
