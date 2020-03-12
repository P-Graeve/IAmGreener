class Badge < ApplicationRecord
  has_many :actions
  BADGE_TYPES = %i(
    bad
    good
    legendary
  )
  enum badge_type: BADGE_TYPES
  # name
  # description
  # icon_url
  # badge_type

  def new?
    # check if a new badge is needed

    # sign up

  end

  def color
    case badge_type
    when 'good'
      { background: 'rgba(42, 139, 123, 0.1)', outline: 'rgb(32, 99, 83)'}
    when 'bad'
      { background: 'rgba(163, 24, 16, 0.3)', outline: 'rgb(209, 18, 8)'}
    when 'legendary'
      { background: 'rgba(179, 138, 43, 0.1)', outline: 'rgb(235, 164, 0)'}
    end
  end

  def self.find_by_type(type)
    badges = Badge.where(badge_type: type)
    # remove any duplicates
    array = badges.group_by { |b| b.name }.values.map do |group|
      if group.size > 1
        sorted_group = group.sort_by { |b| -b.threshold }
        [sorted_group.first]
      else
        group
      end
    end
    array.flatten
  end

  def self.all_names
    Badge.all.map do |badge|
      badge.name
    end
  end

  def self.generate_for(action)
    count = action.total_count
    badges = Badge.order('threshold DESC').where('trigger = ? AND threshold <= ?', action.name, count)
    return false if badges.empty?

    badges.first
  end
end
