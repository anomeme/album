class Picture < ApplicationRecord
  has_many :photos
  # belongs_to :user (外部キー設定する！)
  mount_uploader :image, ImageUploader
end
