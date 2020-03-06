class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
    @daily_progress = current_user.todays_progress
  end
end
