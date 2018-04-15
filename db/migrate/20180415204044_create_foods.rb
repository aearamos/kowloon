class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :title
      t.string :description
      t.string :ingredients
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
