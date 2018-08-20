class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string  :name
      t.string  :open
      t.string  :tel
      t.integer :market_id
      t.string :image
      t.belongs_to :market

      t.timestamps
    end
  end
end
