require 'rails_helper'

RSpec.describe "Issuetags", type: :request do
  describe "GET /issuetags" do
    it "works! (now write some real specs)" do
      get issuetags_path
      expect(response).to have_http_status(200)
    end
  end
end
