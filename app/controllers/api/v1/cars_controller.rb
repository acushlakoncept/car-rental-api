module Api
  module V1
    class CarsController < ApplicationController
      before_action :authenticate_request!
      rescue_from NoMethodError, with: :no_user
      MAX_PAGINATION_LIMIT = 100

      def index
        cars = Car.limit(limit).offset(params[:offset])

        render json: CarsRepresenter.new(cars).as_json
      end

      def create
        current_user = current_user!

        car = current_user.cars.create(car_params)

        if car.save
          render json: CarRepresenter.new(car).as_json, status: :created
        else
          render json: car.errors, status: :unprocessable_entity
        end
      end

      def show
        car = Car.find(params[:id])

        render json: CarRepresenter.new(car).as_json
      end

      def destroy
        Car.find(params[:id]).destroy!

        head :no_content
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

      def no_user
        render json: { error: 'You need to login before you can add a car' }, status: :unauthorized
      end
    end
  end
end
