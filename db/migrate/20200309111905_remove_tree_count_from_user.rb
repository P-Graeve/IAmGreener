class RemoveTreeCountFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :tree_score
  end
end
