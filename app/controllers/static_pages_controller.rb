class StaticPagesController < ApplicationController
  def index
  end
  def landing_page
  	@products = Product.limit(10)
    @posts = Post.limit(10)
    @feedbacks = Feedback.limit(5)
  end
def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
        :to => 'zanesandin@gmail.com',
        :subject => "A new contact form message from #{@name}",
        :body => @message).deliver_now
end
end
