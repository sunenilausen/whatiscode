class AddActiveToArticleWorkshopAndLecture < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :active, :boolean, default: false
    add_column :lectures, :active, :boolean, default: false
    add_column :workshops, :active, :boolean, default: false
  end
end
