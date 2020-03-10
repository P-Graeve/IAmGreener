class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @categories = Category.all
    @badges = current_user.badges
  end

  def contact

  end
end
