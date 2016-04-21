class CreateAppdata < ActiveRecord::Migration
  def change
    create_table :appdata do |t|
       t.string :name
       t.text :description
       t.timestamps null: false
    end
  end
end

