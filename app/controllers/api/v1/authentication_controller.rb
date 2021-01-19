# frozen_string_literal: true

module Api
  module V1
    class AuthenticationController < ApplicationController
      class AuthenticateError < StandardError; end
      
      rescue_from ActionController::ParameterMissing, with: :parameter_missing
      rescue_from AuthenticateError, with: :handle_unauthenticated

      def create
        raise AuthenticateError unless user.authenticate(params.require(:password))

        render json: AuthenticateRepresenter.new(user).as_json, status: :created
      end

      private

      def user
        @user ||= User.find_by(username: params.require(:username))
      end

      def parameter_missing(e)
        render json: { error: e.message }, status: :unprocessable_entity
      end

      def handle_unauthenticated
        head :unauthorized
      end

    end
  end
end
