class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    # user lands on dashboard! Add an action
    Action.create(user: current_user, name: 'open_app')
    @categories = Category.all
    @badges = current_user.badges
    @action = Action.new
  end

  def contact

  end
end
