class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def require_user
    redirect_to new_user_session_path unless current_user
  end
  
  def require_admin
    redirect_to new_user_session_path unless (current_user and current_user.admin?)
  end
  
  def require_not_admin
    flash[:error] = "Un admin n'a pas besoin de se préinscrire"
    redirect_to new_user_session_path unless (current_user and !current_user.admin?)
  end
  
  def current_admin
    current_user.admin?
  end
end
