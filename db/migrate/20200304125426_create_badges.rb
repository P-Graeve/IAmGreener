class CreateBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :badges do |t|
      t.text :description
      t.string :name
      t.string :icon_url

      t.timestamps
    end
  end
end
