class Users::SelfRatingsController < ApplicationController
  # Pls make it right as soon as we link the sign in path
  skip_before_action :authenticate_user!

  def new
    @self_rating = SelfRating.new
  end

  def create
    @self_rating = SelfRating.new(self_rating_params)
    if @self_rating.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def self_rating_params
    params.require(:self_rating).permit(:pickup_trash_score, :conscious_score, :overall_score);
  end
end
