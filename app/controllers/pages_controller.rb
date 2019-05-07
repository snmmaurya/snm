class PagesController < ApplicationController
  def index
    render json: {message: "This site coming soon!", status: 200}
  end
end