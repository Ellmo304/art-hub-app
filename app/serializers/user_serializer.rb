class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :reviews
  has_many :comments
end
