class Admin::ApplicationController < ApplicationController
  before_action :check_admin

  def check_admin
    if current_user.role != "admin"
      redirect_to root_path, notice: "You don't have enough permission."
    end
  end
end
