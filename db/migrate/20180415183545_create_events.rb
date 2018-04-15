class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.date :date
      t.time :initime
      t.time :endtime
      t.string :photo

      t.timestamps
    end
  end
end
