class Badge < ApplicationRecord
  # name
  # description
  # icon_url

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
