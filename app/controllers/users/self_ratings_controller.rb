class Users::SelfRatingsController < ApplicationController
  def new
    @self_rating = SelfRating.new
  end

  def create
    @self_rating = SelfRating.new(self_rating_params)
    if @self_rating.save
      if Badge.new?
        Badge.redirect
      else
        redirect_to dashboard_path
      end
    else
      render :new
    end
  end

  private

  def self_rating_params
    params.require(:self_rating).permit(:pickup_trash_score, :conscious_score, :overall_score);
  end
end
