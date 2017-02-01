class CommentSerializer < ActiveModel::Serializer
  attributes :id, :date, :body
  has_one :review
  has_one :user
end
