class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  validates :user_id, uniqueness: { scope: :friend_id }

  # hook on after_create -> we create a new notification
  after_create :send_new_notification
  after_update :update_notification

  private

  def send_new_notification
    notification = Notification.new(user_id: friend_id, message: "#{user.username} sent you a request", friendship: self)
    notification.friend_request!
  end

  def update_notification
    notification = Notification.find_by(friendship: self)
    notification.friend_accepted!
    # create notification for the friend as well
    notification = Notification.create(user: user, message: "Your request got accepted by #{friend.username}")
  end
end
