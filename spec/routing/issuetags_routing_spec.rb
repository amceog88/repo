require "rails_helper"

RSpec.describe IssuetagsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/issuetags").to route_to("issuetags#index")
    end

    it "routes to #new" do
      expect(:get => "/issuetags/new").to route_to("issuetags#new")
    end

    it "routes to #show" do
      expect(:get => "/issuetags/1").to route_to("issuetags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/issuetags/1/edit").to route_to("issuetags#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/issuetags").to route_to("issuetags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/issuetags/1").to route_to("issuetags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/issuetags/1").to route_to("issuetags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/issuetags/1").to route_to("issuetags#destroy", :id => "1")
    end
  end
end
