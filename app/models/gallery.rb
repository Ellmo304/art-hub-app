class Gallery < ApplicationRecord
  has_many :exhibitions, dependent: :destroy
end
