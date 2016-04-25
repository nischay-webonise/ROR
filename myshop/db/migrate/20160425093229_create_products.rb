class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products1 do |t|
      t.string :name
      t.text :info
      t.integer :quantity
      t.integer :price

      t.timestamps null: false
    end
  end
end
