class ApplicationController < ActionController::Base
  before_filter :has_header
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def has_header
    @has_header = true
end
end
