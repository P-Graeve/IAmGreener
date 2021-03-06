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
    missed_day
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

  # AFTER CREATE this is the action
  def check_for_badge
    new_badge = Badge.generate_for(self)
    if new_badge && !user.all_earned_badges.include?(new_badge)
      # create a new action -> earn badge
      Action.create(user: user, count: 1, name: 'earn_badge', badge: new_badge)
      # create new notification that notifies the user with the new badge
      Notification.create(user: user, message: "Congratulations on receiving the '#{new_badge.name}' badge!")
    end
  end

  def timestamp_attributes_for_create
    [:updated_at]
  end

end
