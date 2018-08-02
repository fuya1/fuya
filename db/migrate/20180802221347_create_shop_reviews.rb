class CreateShopReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_reviews do |t|
      t.string :title
      t.text :content
      t.float :rate
      t.date :date
      t.belongs_to :shop

      t.timestamps
    end
  end
end
