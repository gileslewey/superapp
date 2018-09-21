require 'rails_helper'

describe Product do

  let(:product) { Product.create!(name: "hobo coin", quality: "Good", price: 10) }
  let(:user) { User.create!(email: "John@john.com", first_name: "user", last_name: "Smith",
    admin: false, password: "Password123") }

  context "when the product has comments" do

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful!")
      product.comments.create!(rating: 3, user: user, body: "Ok")
      product.comments.create!(rating: 5, user: user, body: "Great!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end

    it "returns the lowest rating comment" do
      expect(product.lowerest_rating_comment.rating).to eq 1
    end

    it "returns the highest rating comment" do
      expect(product.highest_rating_comment.rating).to eq 5
    end

    it "is not valid without a name" do
      expect(Product.new(description: "It is alright")).not_to be_valid
    end
  end
end
