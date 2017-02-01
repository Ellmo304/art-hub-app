class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :body, :rating
  has_one :user
  has_one :exhibition
  has_many :comments
end
