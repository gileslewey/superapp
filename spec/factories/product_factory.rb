FactoryBot.define do
  factory :comment do
    user_id 1
    body 'Test comment'
    rating 4
  end

  factory :product do
    name "Test Coin"
    description "Great Coin"
    image_url "coin.jpg"
    quality "good"
    price "1200"
  end
end
