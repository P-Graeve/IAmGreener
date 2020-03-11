class ActionsController < ApplicationController
  def create
    badge = Badge.find(params[:badge_id])
    action = Action.new(count: 1, badge: badge, name: params[:name], user: current_user)
    if action.save
      redirect_to dashboard_path
    else
      raise
    end
  end
end
