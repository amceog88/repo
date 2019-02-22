require 'rails_helper'

RSpec.describe IssuesController, type: :controller do
  describe "issues controller test" do

    it "it can get index with login" do
      user = FactoryBot.create(:normal_user)
      session[:user_id] = user.id
      get :index
      response.status.should be(200)
    end

  end


  describe "Issue without login" do
    it "can't login without account" do
      get :index
      response.should redirect_to(login_path)
    end

  end
end
