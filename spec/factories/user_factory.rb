FactoryGirl.define do
sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email "example@example.com"
    password "example"
    first_name "example"
    last_name "example"
    admin false
  end

  factory :admin, class: User do
    email "peter2@example.com"
    password "qwertyuiop"
    admin true
    first_name "Admin"
    last_name "User"
  end

end