class ActionsController < ApplicationController
  def create
    action = Action.new(action_params, count: 1)
    if action.save
      redirect_to dashboard_path
    else
      raise
    end
  end

  private

  def action_params
    params.require(:action).permit(:name, :badge_id)
  end
end
