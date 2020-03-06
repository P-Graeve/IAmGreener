class User < ApplicationRecord
  attr_writer :login

  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  has_many :notifications
  has_many :daily_progresses
  has_many :profile_badges
  has_many :badges, through: :profile_badges

  # Include default devise modules. Others available are:
  has_one_attached :avatar# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

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
    streak = 0

    daily_progresses.each do |dp|
      if dp.daily_challenge_completed?
        streak += 1
      else
        break
      end
    end
    streak
  end

  def trees_this_week
    # get the trees from this past week in an array
    pgs = daily_progresses.last(7)
    pgs.map do |progress|
      progress.tree_amount || 0
    end
  end

  def todays_progress
    # return the last instance of daily_progresses for today
    # check if it is already made
    pg = DailyProgress.find_by(date: 0.days.ago.strftime('%d-%m-%y'))
    if pg
      # return this object
      pg
    else
      # return a new instance of dailyprogress
      DailyProgress.create(user: self, challenge: Challenge.find_by(title: 'Understand Expiration Dates'), date: 0.days.ago.strftime('%d-%m-%y'))
    end
  end

  def todays_challenge
    todays_progress.challenge
  end
end
