require 'rails_helper'

describe Comment do

  let(:product) { FactoryBot.create(:product) }

  context "Testing validations" do

    it "is not valid without a rating" do
      expect(Comment.new(rating:nil)).not_to be_valid
    end

    it "is not valid without text" do
      expect(Comment.new(body:nil)).not_to be_valid
    end

    it "is not valid without a user id" do
      expect(Comment.new(user_id:nil)).not_to be_valid
    end
  end

  context "Testing user validations" do

    it "is not valid if a user doesn't use an integer" do
      expect(Comment.new(user_id: 1, body:"test", rating: "test")).not_to be_valid
    end
  end
end
