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

  def total_count
    # # fetch all actions with the same name as this one
    # actions = Action.where(name: self.name)
    # # sum all counts of previous actions
    # total = actions.map do |action|
    #   action.count
    # end.sum
    # # if current action is not saved yet, add its count too
    # if self.id.nil?
    #   total += self.count
    # end
    # total
  end

  protected

  def check_for_badge
    # badge = Badge.generate_for(self)
    # if badge && !user.badges.include?(badge)
    #   # create new action -> earn badge
    #   Action.create(user: user, count: 1, name: 'earn_badge', badge: badge)
    # end
  end

  def timestamp_attributes_for_create
    [:updated_at]
  end

end
