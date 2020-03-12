class RegistrationsController < Devise::RegistrationsController
  def create
    super
    # create a sign up action
    action = Action.create(user: @user, count: 1, name: 'sign_up')
  end

  protected

  def after_sign_up_path_for(resource)
    new_users_car_path# Or :prefix_to_your_route
  end
end