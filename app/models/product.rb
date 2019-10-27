class Product < ApplicationRecord
  has_many :product_images
  accepts_nested_attributes_for :product_images
  mount_uploader :image, ImageUploader
end
