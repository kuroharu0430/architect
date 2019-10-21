class Product < ApplicationRecord
  has_many :works
  mount_uploader :image, ImageUploader
end
