class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.text :address
      t.string :phone
      t.string :description
      t.integer :user_id
      t.integer :total_price
      t.timestamps
    end
  end
end
