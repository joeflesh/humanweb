class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do
    flash.alert = 'Sign in, buddy.'
    redirect_to new_user_session_path
  end

end
