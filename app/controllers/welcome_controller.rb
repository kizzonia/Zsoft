class WelcomeController < ApplicationController
  before_filter :has_header

  def index
  end


  def has_header
    @has_header = true
  end

end
