class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end
