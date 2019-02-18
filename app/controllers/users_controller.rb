class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user_params[:password] == params[:user][:password_confirmation] && user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup', notice: 'Password error'
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
