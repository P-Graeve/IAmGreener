class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
  end

  def completed
  end

  def failed
  end
end
