class Notification < ApplicationRecord
  belongs_to :user
  enum notification_type: [:other, :friend_request, :friend_accepted]
end
