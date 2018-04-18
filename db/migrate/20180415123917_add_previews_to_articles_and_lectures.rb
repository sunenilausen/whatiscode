class AddPreviewsToArticlesAndLectures < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :preview, :text
    add_column :articles, :preview_image_url, :string
    add_column :lectures, :preview, :text
    add_column :lectures, :preview_image_url, :string
  end
end
