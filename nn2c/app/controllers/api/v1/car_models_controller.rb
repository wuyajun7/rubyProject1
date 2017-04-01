class Api::V1::CarModelsController < ApplicationController

  def index
    @car_models = CarModel.find(params[:car_model_id])
    @base_cars = @car_models.base_cars
  end

end
