class Review < ApplicationRecord
  belongs_to :user
  belongs_to :exhibition
  has_many :comments, dependent: :destroy
end
