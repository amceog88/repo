require 'rails_helper'

RSpec.describe "issuetags/new", type: :view do
  before(:each) do
    assign(:issuetag, Issuetag.new(
      :name => "MyString"
    ))
  end

  # it "renders new issuetag form" do
  #   render

  #   assert_select "form[action=?][method=?]", issuetags_path, "post" do

  #     assert_select "input[name=?]", "issuetag[name]"
  #   end
  # end
end
