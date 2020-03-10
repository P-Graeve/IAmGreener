class DestroyProfileBadges < ActiveRecord::Migration[5.2]
  def change
    drop_table :profile_badges
  end
end
