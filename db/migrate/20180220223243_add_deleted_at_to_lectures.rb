class AddDeletedAtToLectures < ActiveRecord::Migration[5.1]
  def change
    add_column :lectures, :deleted_at, :datetime
    add_index :lectures, :deleted_at
  end
end
