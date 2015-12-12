FactoryGirl.define  do
	factory :user do
		sequence(:email) {|n| "person#{n}@example.com"}
		password "Password123"	
	end

	factory :product do
		name "name"
		description "description"
		image_url "image.JPG"
		price "12.34"
	end

	factory :comment do
		rating 3
		body "Amazing"
		user
		product
	end

	factory :order do
		#code
	end

	factory :post do
		title "Mytitle"
		body "MyText"
	end

	factory :feedback do
		body "MyFeedback"
	end
end
