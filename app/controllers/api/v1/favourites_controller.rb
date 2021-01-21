module Api
  module V1
    class FavouritesController < ApplicationController
      before_action :authenticate_request!

      def create
        current_user = current_user!

        favourite = current_user.favourites.create(car_id: params[:car_id])
    
        if favourite.save
          render json: { message: 'Added to favourite succesfully' }, status: :created
        else
          render json: { error: 'Something went wrong' }, status: :unprocessable_entity
        end
      end
      
    end
  end
end
