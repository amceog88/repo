require 'rails_helper'

RSpec.describe Issue, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it { should belong_to :user }
  it { should has_one_attached :file }



  it "can factory create" do
    line_item = FactoryBot.build(:issue)
    expect(issue).to be_valid
  end


  it "can get also create tags" do
    line_item = FactoryBot.create(:issue)
  end


end
