class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy]

  def index
    @issues = Issue.all.order("created_at DESC")
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to root_path, notice: 'Issue was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @admin_bulletin.update(issue_params)
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
    params.require(:issue).permit(:title, :description)
  end

end
