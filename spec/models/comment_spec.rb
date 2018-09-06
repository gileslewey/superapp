require 'rails_helper'

describe Comment do

  context "validation ->" do

    before(:each) do
      @user = FactoryBot.create(:random_user)
      @product = FactoryBot.create(:random_product)
    end

    it "all good -> valid" do
      @comment = FactoryBot.create(:random_comment,
        user_id: @user.id,
        product_id: @product.id
      )
      expect(@comment).to be_valid
    end

    it "no rating -> invalid" do

      expect(Comment.new(
        body: "b",
        user_id: @user.id,
        product_id: @product.id
      )).not_to be_valid
    end

    it "no body -> invalid" do

      expect(Comment.new(
        user_id: @user.id,
        product_id: @product.id,
        rating: 3
      )).not_to be_valid
    end

    it "no user_id -> invalid" do

      expect(Comment.new(
        body: "b",
        product_id: @product.id,
        rating: 3
      )).not_to be_valid
    end

    it "no product_id -> invalid" do

      expect(Comment.new(
        body: "b",
        user_id: @user.id,
        rating: 3
      )).not_to be_valid
    end

    it "incorrect rating type -> invalid" do

      expect(Comment.new(
        body: "b",
        user_id: @user.id,
        product_id: @product.id,
        rating: "a"
      )).not_to be_valid
    end

  end
end 
