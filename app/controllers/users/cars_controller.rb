class Users::CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @models = @car.fetch_models
    respond_to do |format|
      format.html { render :new }
      format.js
    end
  end

  private

  def fetch_models(car)

  end

  def car_params
    params.require(:car).permit(:brand, :year, :model)
  end
end
