require 'rails_helper'

RSpec.describe "issuetags/index", type: :view do
  before(:each) do
    assign(:issuetags, [
      Issuetag.create!(
        :name => "Name"
      ),
      Issuetag.create!(
        :name => "Name"
      )
    ])
  end

  # it "renders a list of issuetags" do
  #   render
  #   assert_select "tr>td", :text => "Name".to_s, :count => 2
  # end
end
