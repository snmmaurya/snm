class ChangeResponseHeadersMiddleware
  def initialize app
    @app = app
  end

  def call env
    status, headers, response = @app.call(env)
    headers['X-Next-Call-Key'] = SecureRandom.hex(64)
    return [status, headers, response]
  end
end
