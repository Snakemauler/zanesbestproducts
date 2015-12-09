FactoryGirl.define  do
	factory :user do
		sequence(:email) {|n| "#{n}@example.com"}
		password "password123"
	
	end

	factory :product do
		sequence(:name) {|n| "#{n}name"}
		description "description"
		image_url "image.JPG"
		price "12.34"
	end

	factory :comment do
		#code
	end

	factory :order do
		#code
	end

	factory :post do
		#code
	end

	factory :feedback do
		#code
	end
end
