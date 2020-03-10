class AddBadgesToActions < ActiveRecord::Migration[5.2]
  def change
    add_reference :actions, :badge, foreign_key: true
  end
end
