require 'rails_helper'

describe Product do

  context "when the product has comments" do

    before do
      @product = Product.create!(name: "Bert Original", quality: "new", price: "1,000")
      @user = FactoryBot.create(:user)
      @product.comments.create!(rating: 1, user: @user, body: "Awful coin!")
      @product.comments.create!(rating: 3, user: @user, body: "Ok coin!")
      @product.comments.create!(rating: 5, user: @user, body: "Great coin!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq (3)
    end
    it "and has no name or quality is invalid" do
      expect(Product.new(description: "Not too shiny")).not_to be_valid
    end
  end
end
