class Exceptions::BaseException < StandardError
  attr_reader :code, :message
  def initialize message="failed", code=422
    @code = code
    @message = message
  end
end
