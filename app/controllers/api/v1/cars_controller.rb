module Api
  module V1
    class CarsController < ApplicationController
      MAX_PAGINATION_LIMIT = 100

      def index
        cars = Car.limit(limit).offset(params[:offset])

        render json: CarsRepresenter.new(cars).as_json
      end

      def create
        car = Car.create(car_params)

        if car.save
          render json: CarRepresenter.new(car).as_json, status: :created
        else
          render json: car.errors, status: :unprocessable_entity
        end
      end

      private

      def limit
        [
          params.fetch(:limit, MAX_PAGINATION_LIMIT).to_i,
          MAX_PAGINATION_LIMIT
        ].min
      end

      def car_params
        params.require(:car).permit(:make, :model, :year, :color, :transmission,
                                    :ac, :max_capacity, :image_url)
      end
    end
  end
end
