class UsersController < ApplicationController
  def index
    @users = User.all
    @users = @users.by_name(params[:query]) if params[:query].present?
  end
end
