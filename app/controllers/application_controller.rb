class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  skip_before_filter :verify_authenticity_token
end
