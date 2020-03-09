class SessionsController < Devise::SessionsController
  def create
    super
    # create sign in action
    action = Action.new(user: @user, count: 1)
    action.sign_in!
  end
end