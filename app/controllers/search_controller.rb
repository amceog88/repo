class SearchController < ApplicationController
  def index
    @users = User.where("name LIKE ?", "%#{ params[:search] }%")
    @groups = Group.where("name LIKE ?", "%#{ params[:search] }%")
    @group = Group.new
  end
end
