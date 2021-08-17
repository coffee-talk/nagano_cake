class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :introduction
      t.string :image_id
      t.integer :genre_id
      t.integer :price
      t.boolean :is_active

      t.timestamps
    end
  end
end
