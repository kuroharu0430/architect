class ProductImage < ApplicationRecord
  belongs_to :product
  mount_uploader :src, ImageUploader
end
