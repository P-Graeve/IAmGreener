class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :friendship, optional: true
  enum notification_type: [:other, :friend_request, :friend_accepted]
end
