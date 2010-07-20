# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  helper_method :logged_in, :logged_out, :admin, :require_admin
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  private
    def current_session
      return @current_session if defined?(@current_session)
      @current_session = UserSession.find
    end
    
    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_session && current_session.record
    end
    
    def logged_in
      current_user
    end
    
    def logged_out
      !current_user
    end
    
    def admin
      logged_in and current_user.admin
    end
    
    def require_logged_in
      unless current_user
        flash[:error] = "You must be logged in to access this page"
        redirect_to new_user_session_url
        return false
      end
    end
    
    def require_logged_out
      if current_user
        flash[:error] = "You must be logged out to see this page"
        redirect_to account_url
      end
    end
    
    def require_admin
      unless admin
        flash[:error] = "You must have administrator rights to access this page"
        redirect_to new_user_session_url
        return false
      end
    end
    
    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
end
