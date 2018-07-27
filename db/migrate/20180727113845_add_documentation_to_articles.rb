class AddDocumentationToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :documentation, :boolean, default: true
  end
end
