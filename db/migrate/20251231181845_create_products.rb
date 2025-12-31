class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :size_start
      t.string :size_end
      t.string :category
      t.integer :price
      t.integer :discount
      t.integer :rating

      t.timestamps
    end
  end
end
