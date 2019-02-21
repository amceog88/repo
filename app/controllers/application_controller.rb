class ApplicationController < ActionController::Base
before_action :check_login

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] rescue session[:user_id] = nil
  end

protected

  def check_login
    unless current_user
      redirect_to login_path
    end
  end
end
