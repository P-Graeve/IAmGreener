class DailyProgressesController < ApplicationController

  def create
    raise
  end

  def update
    @challenge = Challenge.find(params[:challenge_id])
    @daily_progress = current_user.todays_progress
    if params_choice[:daily_challenge_completed] == 'completed'
      # update daily progress with true for challenge completed
      tree_count = 35
      # update the instance of todays progress
      @daily_progress.update(tree_amount: tree_count, daily_challenge_completed: true)
      # update the user's tree count
      current_user.update(tree_score: current_user.tree_score + tree_count)
      redirect_to daily_progresses_completed_path
    else
      @daily_progress.update(daily_challenge_completed: false)
      redirect_to daily_progresses_failed_path
    end
  end

  def completed
  end

  def failed
  end

  private
  def params_choice
    params.require(:daily_progress).permit(:daily_challenge_completed)
  end

end
