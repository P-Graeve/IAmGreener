class ActionsController < ApplicationController
  def create
    if params[:badge_id].present?
      badge = Badge.find(params[:badge_id])
    end
    action = Action.new(count: 1, badge: badge, name: params[:name], user: current_user)
    if action.save
      redirect_to dashboard_path
    else
      raise
    end
  end
end
