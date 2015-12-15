class FeedbacksController < ApplicationController

	def create
        debugger
		@post = Post.find(params[:post_id])
		@feedback = @post.feedbacks.new(feedback_params)
   		@feedback.user = current_user
    	respond_to do |format|
    		if @feedback.save
    			format.html { redirect_to @post, notice: 'Comment was created successfully.' }
        		format.json { render :show, status: :created, location: @post }
        	else
        	format.html { redirect_to @post, alert: 'Comment was not saved successfully.' }
        	format.json { render json: @feedback.errors, status: :unprocessable_entity }
        end
    end
end


	def destroy
    	@feedback = Feedback.find(params[:id])
    	post = @feedback.post
   		@feedback.destroy
    	redirect_to post 
	end

	private

	def feedback_params
		params.require(:feedback).permit(:user_id, :body)
	end

end