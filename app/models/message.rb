class Message < ApplicationRecord
  belongs_to :customer
  mount_uploader :image, ImageUploader

  validates :text, presence: true, length: {maximum: 300}
  
  enum roll:{"管理者":0, "お客様":1}
end
