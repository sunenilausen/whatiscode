class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :key
      t.string :body

      t.timestamps
    end
  end
end
