class MarketReview < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :market
  belongs_to :user

  validates :user, presence: true
end
