class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.mediumblob :image, null: false
      t.date :day, null: false
      t.text :explan, null:false
      t.integer :price, null: false
      t.text :voice, null: false
    end
  end
end
