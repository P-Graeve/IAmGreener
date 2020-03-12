class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  validates :user_id, uniqueness: { scope: :friend_id }

  # hook on after_create -> we create a new notification
  after_create :send_new_notification
  after_update :update_notification
  private

  def send_new_notification
    notification_type = self.accepted ? 'friend_accepted' : 'friend_request'
    notification = Notification.create(notification_type: notification_type, user_id: friend_id, message: "#{user.username} sent you a request", friendship: self)
  end

  def update_notification
    notif = Notification.find_by(friendship: self)
    notif.friend_accepted!
    # create notification for the friend as well
    Notification.create(user: user, message: "Your request got accepted by #{friend.username}")
  end
end
