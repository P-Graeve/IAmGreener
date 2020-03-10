class BadgesController < ApplicationController
  def index
    @badges = Badge.sort_by_type
  end
end
