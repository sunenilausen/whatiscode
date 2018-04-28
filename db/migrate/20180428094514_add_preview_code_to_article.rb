class AddPreviewCodeToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :preview_code, :text
  end
end
