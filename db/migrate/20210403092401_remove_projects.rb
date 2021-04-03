class RemoveProjects < ActiveRecord::Migration[5.1]
  def change
    drop_table :projects
  end
end
