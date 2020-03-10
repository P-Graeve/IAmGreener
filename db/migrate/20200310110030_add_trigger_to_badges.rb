class AddTriggerToBadges < ActiveRecord::Migration[5.2]
  def change
    add_column :badges, :trigger, :string
    add_column :badges, :countable, :string
    add_column :badges, :threshold, :integer
    add_column :badges, :stars, :integer
  end
end
