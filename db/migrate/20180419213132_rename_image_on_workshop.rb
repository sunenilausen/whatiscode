class RenameImageOnWorkshop < ActiveRecord::Migration[5.1]
  def change
    rename_column :workshops, :image, :image_url
  end
end
