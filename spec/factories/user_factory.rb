FactoryBot.define do
  sequence :email do |n|
    "email#{n}@factory.com"
  end

  factory :user do
    email
    password "123456"
    first_name "valid"
    last_name "user"
    admin false
  end
end
