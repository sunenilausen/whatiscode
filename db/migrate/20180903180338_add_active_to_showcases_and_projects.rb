class AddActiveToShowcasesAndProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :showcases, :active,  :boolean, default: false
    add_column :projects, :active,  :boolean, default: false
  end
end
