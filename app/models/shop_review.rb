class ShopReview < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :shop
  belongs_to :user

  validates :user, presence: true
end
