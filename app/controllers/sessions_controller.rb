class SessionsController < Devise::SessionsController
  def create
    super
    # create sign in action
    action = Action.create(user: @user, count: 1, name: 'sign_in')
  end

  protected

  def after_sign_in_path_for(resource)
    dashboard_path
  end
end