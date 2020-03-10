require 'pry-byebug'
class Badge < ApplicationRecord
  enum badge_type: %i(
    good
    bad
    legendary
  )
  # name
  # description
  # icon_url
  # badge_type

  def new?
    # check if a new badge is needed

    # sign up

  end

  def self.all_names
    Badge.all.map do |badge|
      badge.name
    end
  end

  def self.generate_for(action)
    count = action.total_count
    badges = Badge.order('threshold DESC').where('trigger = ? AND threshold >= ?', action.name, count)
    return false if badges.empty?

    badges.first
  end
end
