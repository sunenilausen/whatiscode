class CreateWorkshops < ActiveRecord::Migration[5.1]
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :description
      t.string :difficulty
      t.integer :age

      t.timestamps
    end
  end
end
