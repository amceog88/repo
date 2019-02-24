class UsersController < ApplicationController
before_action :check_login, except: [:new, :create]
before_action :set_user, only: [:show, :update]

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

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'User was successfully updated.'
    else
      redirect_to user_path(@user)
    end
  end

private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :avatar)
  end

end
