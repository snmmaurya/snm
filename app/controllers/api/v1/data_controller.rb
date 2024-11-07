class Api::V1::DataController < Api::V1::BaseController

  def index
    render json: {message: 'Its working!'}
  end

  def exception
    raise Exceptions::MyCustomException.new("Its My Custom Exception", 400)
  end
end
