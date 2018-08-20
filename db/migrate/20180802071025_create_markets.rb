class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address
      t.string :open
      t.boolean :parking
      t.string :tel
      t.string :closed
      t.string :locate1
      t.string :locate2
      t.string :locate3
      t.string :image

      t.timestamps
    end
  end
end
