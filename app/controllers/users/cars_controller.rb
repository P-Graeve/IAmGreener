class Users::CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    # check if the car is already provided with all props (brand, year and model)
    if @car.valid?
      # save the car
      @car.save

      respond_to do |format|
        # redirect to dashboard page
        format.html { redirect_to root_path }
        # redirect to dashboard page
        format.js { render :create_car }
      end
    else
      # fetch the car models
      @models = @car.fetch_models
      respond_to do |format|
        # render new when javascript is not enabled
        format.html { render :new }
        # otherwise run javascript erb
        format.js
      end
    end
  end

  private

  def fetch_models(car)

  end

  def car_params
    params.require(:car).permit(:brand, :year, :model)
  end
end
