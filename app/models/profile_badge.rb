class ProfileBadge < ApplicationRecord
  belongs_to :user
  belongs_to :badge
end
