class CreateMarketReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :market_reviews do |t|
      t.string :title
      t.text :content
      t.float :rate
      t.date :date
      t.belongs_to :market
      t.belongs_to :user

      t.timestamps
    end
  end
end
