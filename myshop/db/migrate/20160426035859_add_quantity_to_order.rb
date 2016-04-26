class AddQuantityToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :quant, :integer
    add_column :orders, :product_id, :integer
    add_foreign_key :orders, :products, column: :product_id
  end
end
