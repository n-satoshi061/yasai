class CreatePays < ActiveRecord::Migration[5.2]
  def change
    create_table :pays do |t|
      t.string :payment, null: false
      t.timestamps
    end
  end
end
