class Users::CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @times_fetched = params[:times_fetched].to_i

    if @times_fetched.zero?
      # set is fetched to true
      # when the car is not done, just refresh the models
      # fetch the car models
      @models = @car.fetch_models

      respond_to do |format|
        # render new when javascript is not enabled
        format.html { render :new }
        # otherwise run javascript erb
        format.js
      end

      @times_fetched += 1

    else
      # check if the car is already provided with all props (brand, year and model)
      if @car.valid?
        # save the car
        @car.save
        # fetch the info we need from the api
        if @car.update(mpg: @car.fetch_mpg)
        else
          raise
        end

        respond_to do |format|
          # redirect to dashboard page
          format.html { redirect_to users_self_ratings_path }
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
  end

  private

  def car_params
    params.require(:car).permit(:brand, :year, :model)
  end
end
