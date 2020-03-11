class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @categories = Category.all
    @badges = current_user.badges
    @actions = current_user.actions
  end

  def contact

  end
end
