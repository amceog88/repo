class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy]

  def index
    @issue = Issue.new
    @issues = Issue.where(:user == current_user).order("created_at DESC").page(params[:page]).per(10)
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.user = current_user
    if @issue.save
      redirect_to root_path, notice: 'Issue was successfully created.'
    else
      redirect_to root_path
    end
  end


  def update
    if @issue.update(issue_params)
      redirect_to root_path, notice: 'Bulletin was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @issue.destroy
    redirect_to root_path, notice: 'Bulletin was successfully destroyed.'
  end

private

  def set_issue
    @issue = Issue.find(params[:id])
  end

  def issue_params
    params.require(:issue).permit(:title, :description, :end_time, :state, :file, :position)
  end

end
