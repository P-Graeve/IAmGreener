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
end
