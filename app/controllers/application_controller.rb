class ApplicationController < ActionController::Base
  protect_from_forgery

  # this is for CanCan
  def current_user
      true
  end
end
