class CreateObjectCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :object_categories do |t|
      t.integer :category_id
      t.integer :object_id
      t.timestamps
    end
  end
end
