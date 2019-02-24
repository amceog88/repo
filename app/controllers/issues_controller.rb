class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy]
  before_action :redirect_search, only: [:index]

  def index
    @issue = Issue.new
    @q = Issue.ransack(params[:q])
    @issues = @q.result(distinct: true).where(user: current_user).order("created_at DESC").page(params[:page]).per(10)
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
      redirect_to root_path, notice: 'Issue was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @issue.destroy
    redirect_to root_path, notice: 'Issue was successfully destroyed.'
  end

  def tips
    @not_read_issues = Issue.where(user: current_user, is_readed: false).order("created_at DESC")
    @deadline_issues = Issue.deadline_issues.where(user: current_user).order("created_at DESC")
    if @not_read_issues.count == 0 && @deadline_issues.count == 0
      redirect_to root_path
    end

    @not_read_issues.all.update(is_readed: true)
  end

private

  def set_issue
    @issue = Issue.find(params[:id])
  end

  def issue_params
    params.require(:issue).permit(:title, :description, :end_time, :state, :file, :priority)
  end

  def redirect_search
    if params[:group]
      redirect_to search_index_path(search: params[:q][:issuetags_name_cont])
    end
  end

end
