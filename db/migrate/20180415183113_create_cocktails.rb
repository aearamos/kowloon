class CreateCocktails < ActiveRecord::Migration[5.1]
  def change
    create_table :cocktails do |t|
      t.string :title
      t.string :description
      t.string :ingredients
      t.string :string
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
