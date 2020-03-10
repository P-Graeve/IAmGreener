class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  validates :user_id, uniqueness: { scope: :friend_id }

  # hook on after_create -> we create a new notification
  after_create :send_new_notification


  private

  def send_new_notification
    Notification.create(user_id: friend_id, message: "#{user.username} sent you a request")
  end
end
