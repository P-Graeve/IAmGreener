class User < ApplicationRecord
  attr_writer :login

  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  has_many :notifications
  has_many :actions
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
    puts "streak count"
    5
  end

  def trees_this_week
    # get the trees from this past week in an array
    puts "trees this week"
  end

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

  def todays_challenge
    hash = todays_progress
    puts "todays challenge"
    hash[:daily_challenge]
  end
end
