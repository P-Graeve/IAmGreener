class AddImageToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :image_url, :string
  end
end
