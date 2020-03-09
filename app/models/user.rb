class User < ApplicationRecord
  attr_writer :login

  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  has_many :notifications
  has_many :actions
  has_many :profile_badges
  has_many :badges, through: :profile_badges

  # friends association
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name: 'Friendship', foreign_key: 'friend_id'
  has_many :inverse_friends, through: :inverse_friendships, source: :user

  # Include default devise modules. Others available are:
  has_one_attached :avatar# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # login
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end

  def login
    @login || self.username || self.email
  end

  def streak_count
    5
  end

  # actions
  def actions_from_day(date)
    actions = Action.where(user: self)
    actions.select do |action|
      action.created_at.strftime('%d-%m-%y') == date.strftime('%d-%m-%y')
    end
  end

  # trees
  def trees
    # get all trees from user
    actions.select do |action|
      action.earn_tree?
    end.map do |action|
      action.count
    end.sum
  end

  def trees_on_day(date)
    # get the sum of the total amount of trees on a certain day
    actions_from_day(date).select do |action|
      action.earn_tree?
    end.map do |action|
      action.count
    end.sum
  end

  def trees_by_day_this_week
    # get the trees from this past week in an array
    # get week day nr (sunday: 1, saturday: 7)
    week_day = Time.now().wday;
    trees_arr = [0, 0, 0, 0, 0, 0, 0]
    (0..week_day).each do |i|
      trees_arr[i] = trees_on_day((week_day - i).days.ago)
    end
    trees_arr
  end

  # progress
  def progress_from(date)
    puts "Progress from #{date}"
    {
      daily_challenge_completed?: false,
      daily_challenge: Challenge.all.sample
    }
  end

  def todays_progress
    progress_from(0.days.ago)
  end

  # challenges
  def todays_challenge
    todays_progress[:daily_challenge]
  end

  def challenge_completed?
    false
  end
end
