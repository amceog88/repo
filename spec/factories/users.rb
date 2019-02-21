FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }
    password "12345678"
    name "user"


    factory :admin_user do
      name "admin"
      role "admin"
    end

    factory :normal_user do
      name "user"
      role "normal"
    end
  end
end
