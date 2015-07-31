class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_member
  helper_method :current_controller

  def current_member
    @current_member ||= Member.find session[:member_id] if session[:member_id]
  end

  def current_controller
    if params[:controller] == "sessions"
        "sessions-background"
    else
        "nosessions-background"
    end
  end

# render the background if the sessions controller is active

end
