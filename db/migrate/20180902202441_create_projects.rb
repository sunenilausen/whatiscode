class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.date :completed_at
      t.string :owner_names
      t.string :image_url
      t.text :project_source

      t.timestamps
    end
  end
end
