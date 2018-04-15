class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
