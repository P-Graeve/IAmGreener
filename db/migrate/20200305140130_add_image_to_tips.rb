class AddImageToTips < ActiveRecord::Migration[5.2]
  def change
    add_column :tips, :image_url, :string
  end
end
