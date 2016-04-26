class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
