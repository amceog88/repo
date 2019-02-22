class Admin::UsersController < Admin::ApplicationController
  before_action :set_user, only: [:update, :destroy]

  def index
    @users = User.all
  end

  def create

  end

  def update
    if !@user.last_admin && @user.update(user_params)
      redirect_to admin_root_path, notice: 'User was successfully updated.'
    else
      redirect_to admin_root_path
    end
  end

  def destroy
    unless @user.last_admin
      @user.destroy
    end
  end

private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :role)
  end
end
