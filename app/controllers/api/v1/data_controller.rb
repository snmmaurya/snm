class Api::V1::DataController < ApplicationController
  around_action :call_around_action
  before_action :call_before_action
  after_action :call_after_action
  

  def index
    render json: {message: 'Its working!'}
  end

  def call_around_action
    Rails.logger.debug('BEFORE Inside around action')
    yield
    Rails.logger.debug('AFTER Inside around action')
  end

  def call_before_action
    Rails.logger.debug('Inside before action')
  end

  def call_after_action
    Rails.logger.debug('Inside after action')
  end
end
