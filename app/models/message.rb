class Message < ApplicationRecord
  belongs_to :customer
  mount_uploader :image, ImageUploader

  validates :text, presence: true, length: {maximum: 300}
  
  enum roll:{"admin":0, "customer":1}
end
