class GallerySerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :tube, :image, :body
  has_many :exhibitions
end
