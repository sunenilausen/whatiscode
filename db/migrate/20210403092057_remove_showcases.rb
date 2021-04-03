class RemoveShowcases < ActiveRecord::Migration[5.1]
  def change
    drop_table :showcases
  end
end
