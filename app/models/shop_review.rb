class ShopReview < ApplicationRecord
  belongs_to :shop
  belongs_to :user

  validates :user, presence: true
end
