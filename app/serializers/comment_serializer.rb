class CommentSerializer < ActiveModel::Serializer
  attributes :id, :date, :body, :user
  has_one :review
  has_one :user
end
