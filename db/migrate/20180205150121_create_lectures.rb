class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.integer :number
      t.string :title
      t.text :body
      t.references :workshop, foreign_key: true

      t.timestamps
    end
  end
end
