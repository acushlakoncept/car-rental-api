module Api
    module V1
      class UsersController < ApplicationController
        def index
          users = User.all 

          render json: users
        end
        # def create
        #   user = User.create(user_params)

        #   if user.save
        #     render json: UserRepresenter.new(user).as_json, status: :created
        #   else
        #     render json: user.errors, status: :unprocessable_entity
        #   end

        # end


        private

        def user_params
          params.require(:user).permit(:username, :password)
        end
      end
    end
end
