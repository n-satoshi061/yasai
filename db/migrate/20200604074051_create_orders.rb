class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :ordernum, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
