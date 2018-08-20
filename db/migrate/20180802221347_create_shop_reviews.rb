class CreateShopReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :shop_reviews do |t|
      t.string :title
      t.text :content
      t.float :rate
      t.date :date
      t.integer :shop_id
      t.string :image
      t.belongs_to :shop
      t.belongs_to :user

      t.timestamps
    end
  end
end
