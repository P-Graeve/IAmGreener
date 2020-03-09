class Action < ApplicationRecord
  belongs_to :challenge, optional: true
  belongs_to :car, optional: true
  belongs_to :self_rating, optional: true
  belongs_to :user

  enum name: %i(sign_up sign_in open_app earn_tree complete_challenge earn_badge add_car add_self_rating)

  validates :user, presence: true
  validates :count, presence: true, numericality: true

  after_create :check_for_badge

  def check_for_badge
    puts "Check for badge"
  end
end
