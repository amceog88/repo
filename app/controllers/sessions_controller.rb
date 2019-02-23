class SessionsController < ApplicationController
before_action :check_login, except: [:new, :create, :destroy]

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.password == params[:password].first

      session[:user_id] = user.id
      redirect_to tips_issues_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
