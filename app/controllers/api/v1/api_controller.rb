module Api
  module V1
    # TODO: Add authentication
    class ApiController < ActionController::Base
      # Prevent CSRF attacks by raising an exception.
      # For APIs, you may want to use :null_session instead.
      protect_from_forgery with: :exception
    end
  end
end
