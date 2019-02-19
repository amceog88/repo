class Admin::UsersController < Admin::ApplicationController
  before_action :set_user, only: [:update, :destroy]

  def index
    @users = User.all
  end

  def create

  end

  def update

  end

  def destroy
   @user.destroy
  end

private

  def set_user
    @user = User.find(params[:id])
  end

  def issue_params
    params.require(:user).permit(:name, :email, :role)
  end
end
