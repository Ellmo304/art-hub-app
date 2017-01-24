class ExhibitionSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :opening_date, :closing_date, :image, :body
  has_one :gallery
  has_many :reviews
end
