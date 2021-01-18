module ExceptionHandler
  extend ActiveSupport::Concern
  class AuthenticateError < StandardError; end

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ error: e.message }, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ error: e.message }, :unprocessable_entity)
    end

    rescue_from ActionController::ParameterMissing do |e|
      json_response({ error: e.message }, :unprocessable_entity)
    end

    rescue_from AuthenticateError, with: :handle_unauthenticated
  end

  def handle_unauthenticated
    head :unauthorized
  end
end
