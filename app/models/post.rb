class Post < ActiveRecord::Base
	belongs_to :user
	has_many :feedbacks

	validates :title, presence: true

end
