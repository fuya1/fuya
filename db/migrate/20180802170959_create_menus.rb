class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      t.text :content
      t.integer :shop_id
      t.belongs_to :shop
      
      t.timestamps
    end
  end
end
