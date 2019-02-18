require 'rails_helper'

RSpec.describe "issuetags/show", type: :view do
  before(:each) do
    @issuetag = assign(:issuetag, Issuetag.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
