class AddAddressToApp < ActiveRecord::Migration
  def change
    add_column :appdata, :address, :text
  end
end
