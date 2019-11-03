class Message < ApplicationRecord
  belongs_to :customer
  mount_uploader :image, ImageUploader

  validates :text, presence: true, length: {maximum: 300}
end
