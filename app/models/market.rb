class Market < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :shops
  has_many :market_reviews
end
