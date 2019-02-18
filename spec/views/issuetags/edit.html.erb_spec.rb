require 'rails_helper'

RSpec.describe "issuetags/edit", type: :view do
  before(:each) do
    @issuetag = assign(:issuetag, Issuetag.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit issuetag form" do
    render

    assert_select "form[action=?][method=?]", issuetag_path(@issuetag), "post" do

      assert_select "input[name=?]", "issuetag[name]"
    end
  end
end
