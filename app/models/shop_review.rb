class ShopReview < ApplicationRecord
  belongs_to :shop
  belongs_to :user
end
