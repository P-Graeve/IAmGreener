class RemoveStars < ActiveRecord::Migration[5.2]
  def change
    remove_column :profile_badges, :stars
  end
end
