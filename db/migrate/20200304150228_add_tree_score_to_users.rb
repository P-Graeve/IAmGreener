class AddTreeScoreToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :tree_score, :integer
  end
end
