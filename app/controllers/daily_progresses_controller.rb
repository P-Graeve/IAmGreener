class DailyProgressesController < ApplicationController
  def create

  end

  def completed
    @daily = current_user.todays_challenge
  end

  def failed
  end

  private


end
