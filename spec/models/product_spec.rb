require 'rails_helper'

describe Product do

	context "when the product has comments" do

		before do
			@product = Product.create(:name => "SEO Services")
			@user = User.create
			@product.comments.create(:rating => 1, :user => @user, :body => "Horrible Services")
			@product.comments.create(:rating => 3, :user => @user, :body => "Mediocre")
			@product.comments.create(:rating => 5, :user => @user, :body => "Amazing Services")
		end

		it "returns the average rating of all the comments" do
			expect(@product.average_rating).to eq 3
		end
	end

	context "product with description but no name" do

		before do
			@product = Product.create(:name => nil, :description => "This is a great product", :image_url => "Pic.jpg", :price => "$45.00")
		end

		it "should not pass validation without name" do
			expect(@product).not_to be_valid
		end
	end
end
