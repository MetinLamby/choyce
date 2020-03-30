class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :link
      t.string :product_type
      t.string :colour
      t.integer :price
      t.string :brand
      t.string :photo

      t.timestamps
    end
  end
end
