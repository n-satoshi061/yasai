class CreateOrderPays < ActiveRecord::Migration[5.2]
  def change
    create_table :order_pays do |t|
      t.references :order, null: false, foreign_key: true
      t.references :pay, null: false, foreign_key: true
      t.timestamps
    end
  end
end
