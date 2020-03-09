class Action < ApplicationRecord
  belongs_to :challenge
  belongs_to :car
  belongs_to :self_rating
  belongs_to :user

  enum name: %i(sign_up sign_in open_app earn_tree complete_challenge earn_badge add_car add_self_rating)

  validates :user, presence: true

  after_create :check_for_badge

  def check_for_badge
    raise
  end
end
