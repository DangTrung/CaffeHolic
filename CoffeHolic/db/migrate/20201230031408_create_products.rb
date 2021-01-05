class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :image
      t.string :status
      t.text :description
      t.integer :discount
      t.timestamps
    end
  end
end
