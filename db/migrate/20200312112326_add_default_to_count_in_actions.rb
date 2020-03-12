class AddDefaultToCountInActions < ActiveRecord::Migration[5.2]
  def change
    change_column_default :actions, :count, 1
  end
end
