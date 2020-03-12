class Action < ApplicationRecord
  belongs_to :challenge, optional: true
  belongs_to :car, optional: true
  belongs_to :self_rating, optional: true
  belongs_to :badge, optional: true
  belongs_to :user

  enum name: %i(
    sign_up
    sign_in
    open_app
    earn_tree
    new_daily_challenge
    complete_challenge
    earn_badge
    collect_badge
    add_car
    remove_car
    add_self_rating
  )

  validates :user, presence: true
  validates :count, presence: true, numericality: true

  after_create :check_for_badge

  before_save do
    self.created_at || DateTime.now
  end

  def total_count_of_this_action_for_user
    # this will calculate the total amount that this action has count for for this user
    Action.where(name: self.name, user: self.user).sum(:count)
  end

  protected

  def check_for_badge
    new_badge = Badge.generate_for(self)
    if badge && !user.all_earned_badges.include?(badge)
      # create a new action -> earn badge
      Action.create(user: user, count: 1, name: 'earn_badge', badge: badge)
    end
  end

  def timestamp_attributes_for_create
    [:updated_at]
  end

end
