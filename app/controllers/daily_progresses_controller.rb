class DailyProgressesController < ApplicationController

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @daily_progress = current_user.todays_progress
    if params_choice == 'completed'
      # update daily progress with true for challenge completed
      tree_count = 35
      # update the instance of todays progress
      @daily_progress.update(tree_amount: tree_count)
      # update the user's tree count
      current_user.update(tree_count: current_user.tree_count + tree_count)

      redirect_to 'daily_progresses/completed'
    else
      redirect_to 'daily_progresses/failed'
    end

  end

  private
  def params_choice
    params.require(:daily_progress).permit(:daily_challenge_completed)
  end

end
