class SelfRatingsController < ApplicationController
  # Pls make it right as soon as we link the sign in path
  skip_before_action :authenticate_user!

  def new
    @self_ratings = SelfRating.new
  end

  def create
    @self_rating = SelfRating.new(self_rating[params[:id]])
    if @self_rating.save
      redirect_to root_path
    else
      render :new
    end
  end
end
