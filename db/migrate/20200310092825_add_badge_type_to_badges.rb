class AddBadgeTypeToBadges < ActiveRecord::Migration[5.2]
  def change
    add_column :badges, :badge_type, :integer
  end
end
