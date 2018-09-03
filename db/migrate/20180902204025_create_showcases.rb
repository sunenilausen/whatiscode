class CreateShowcases < ActiveRecord::Migration[5.1]
  def change
    create_table :showcases do |t|
      t.string :title
      t.text :description
      t.date :released_at
      t.string :image_url

      t.timestamps
    end
  end
end
