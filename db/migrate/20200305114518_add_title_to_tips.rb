class AddTitleToTips < ActiveRecord::Migration[5.2]
  def change
    add_column :tips, :title, :string
  end
end
