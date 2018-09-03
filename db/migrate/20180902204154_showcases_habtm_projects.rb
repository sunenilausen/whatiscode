class ShowcasesHabtmProjects < ActiveRecord::Migration[5.1]
  def change
    create_join_table :projects, :showcases do |t|
      t.index :project_id
      t.index :showcase_id
    end
  end
end
