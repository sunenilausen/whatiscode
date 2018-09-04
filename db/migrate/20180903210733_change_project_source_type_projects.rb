class ChangeProjectSourceTypeProjects < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :project_source, :string
  end
end
