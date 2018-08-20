class Shop < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :market
  has_many :menus
  has_many :shop_reviews
end
