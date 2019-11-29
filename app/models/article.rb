class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  mount_uploader :image, ImageUploader
  belongs_to :spot
  has_many :pictures
end
