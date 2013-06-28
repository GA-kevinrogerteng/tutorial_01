class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.decimal :cost, precision: 10, scale: 2
      t.integer :quantity_in_stock
      t.integer :quantity_on_order

      t.timestamps
    end
    add_index :products, :name
  end
end
