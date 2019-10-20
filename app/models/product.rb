class Product < ApplicationRecord
  has_many :works
  accepts_nested_attributes_for :works
  mount_uploader :image, ImageUploader
end
