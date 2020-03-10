class BadgesController < ApplicationController
  def index
    @good_badges = Badge.find_by_type('good')
    @bad_badges = Badge.find_by_type('bad')
    @legendary_badges = Badge.find_by_type('legendary')
    raise
  end
end
