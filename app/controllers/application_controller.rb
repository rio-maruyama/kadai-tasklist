class ApplicationController < ActionController::Base
  
  include SessionsHelper
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  # def current_user
  #   @current_user ||= User.find_by(id: session[:user_id])
  # end
  
end
