class Users::NotificationsController < ApplicationController
  def index
    @notifications = Notification.order('updated_at DESC').where(user: current_user)
  end

  def destroy
    @notification = Notification.find(params[:id])
    @notification.destroy
    redirect_to users_notifications_path
  end
end
