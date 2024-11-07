class Api::V1::BaseController < ApplicationController
  rescue_from Exceptions::BaseException, with: :handle_custom_exception

  def handle_custom_exception exception
    render json: {message: exception.message, code: exception.code}, status: exception.code
  end
end
