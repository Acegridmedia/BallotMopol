class ReportSerializer < ActiveModel::Serializer
  attributes :sender_id, :recipient_id, :body
end
