class DailyProgress < ApplicationRecord
  STATES = [
    'completed',
    "couldn't complete the challenge",
    "didn't complete the challenge"
  ]
  belongs_to :user
  belongs_to :challenge

  validates :date, presence: true, uniqueness: { scope: :user }
end
