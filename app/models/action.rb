class Action < ApplicationRecord
  belongs_to :challenge

  enum name: %i(sign_up sign_in open_app earn_tree complete_challenge earn_badge)

  after_create :check_for_badge

  def check_for_badge
    raise
  end
end
