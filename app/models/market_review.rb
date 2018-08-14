class MarketReview < ApplicationRecord
  belongs_to :market
  belongs_to :user
end
