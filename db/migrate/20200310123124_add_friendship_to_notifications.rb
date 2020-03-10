class AddFriendshipToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_reference :notifications, :friendship, foreign_key: true
  end
end
