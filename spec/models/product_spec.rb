require 'rails_helper'

describe Product do
  context "when the product has comments" do

    before do
      @product = Product.create!(name: "race bike")
      @user = User.create!(email: "john.smith@mail.com", password: "123456789")
      @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
      @product.comments.create!(rating: 3, user: @user, body: "Ok bike!")
      @product.comments.create!(rating: 5, user: @user, body: "Awesome bike!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  end

  context "product not valid" do

    it "no description is invalid" do
      expect(Product.new(description: "Nice bike")).not_to be_valid
    end
  end

end