class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy, :join, :leave]


  def create
    @group = Group.new(group_params)
    @group.save
    redirect_to group_path(@group)
  end

  def show

  end

  def join
    @group.users << @current_user
    redirect_to search_index_path
  end

  def leave
    UserGroupShip.where(group_id: @group, user_id: @current_user).first.destroy
    redirect_to search_index_path
  end

private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end
end
