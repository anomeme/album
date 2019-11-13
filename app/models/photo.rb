class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :picture

  mount_uploader :image, ImageUploader
end
