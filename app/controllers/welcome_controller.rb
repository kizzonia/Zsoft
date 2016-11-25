class WelcomeController < ApplicationController
  before_filter :has_header

  def index
  end


  def has_header
    @have_sidebar = true
  end

end
