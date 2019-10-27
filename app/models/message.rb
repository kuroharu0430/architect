class Message < ApplicationRecord
  belongs_to :customer
  mount_uploader :image, ImageUploader
end
