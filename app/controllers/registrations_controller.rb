class RegistrationsController < Devise::RegistrationsController
  def create
    super
    raise
    # create a sign up action
    action = Action.new(user: @user, count: 1)
    # save with the name of sign up
    action.sign_up!
  end

  protected

  def after_sign_up_path_for(resource)
    :new_users_car # Or :prefix_to_your_route
  end
end