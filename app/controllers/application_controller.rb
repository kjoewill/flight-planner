class ApplicationController < ActionController::Base

  def authentication_required
    if !logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user ||= Pilot.find(session[:user_id]) if session[:user_id]
  end

  #This allows current user to be called from view
  helper_method :current_user

end
