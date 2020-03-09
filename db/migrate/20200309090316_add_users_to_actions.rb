class AddUsersToActions < ActiveRecord::Migration[5.2]
  def change
    add_reference :actions, :user, foreign_key: true
  end
end
