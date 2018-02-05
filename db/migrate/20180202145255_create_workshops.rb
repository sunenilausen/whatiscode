class CreateWorkshops < ActiveRecord::Migration[5.1]
  def change
    create_table :workshops do |t|
      t.string :title
      t.string :key
      t.text :description

      t.timestamps
    end
  end
end
