class AddPhoneNumberToApp < ActiveRecord::Migration
  def change
    add_column :appdata, :phone_number, :text
  end
end
