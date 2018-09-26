
FactoryBot.define do
  sequence "email" do |n|
    "person#{n}@example.com"
  end

  factory :user do
    email
    password "password1"
    first_name "John"
    last_name "Smith"
    admin false
  end
end
