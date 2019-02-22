class ApplicationController < ActionController::Base
before_action :check_login
before_action :set_locale

  def set_locale
    # 可以將 ["en", "zh-TW"] 設定為 VALID_LANG 放到 config/environment.rb 中
    if params[:locale] && I18n.available_locales.include?( params[:locale].to_sym )
      session[:locale] = params[:locale]
    end
    I18n.locale = session[:locale] || I18n.default_locale
  end

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
