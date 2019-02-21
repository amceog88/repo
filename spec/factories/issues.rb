FactoryBot.define do
  factory :issue do
    title { "MyString" }
    description { "MyText" }
    user_id { 1 }
    position {1}
  end
end
