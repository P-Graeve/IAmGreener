class CreateProfileBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_badges do |t|
      t.references :user, foreign_key: true
      t.references :badge, foreign_key: true
      t.integer :stars

      t.timestamps
    end
  end
end
