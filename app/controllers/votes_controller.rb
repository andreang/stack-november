class VotesController < ApplicationController
def create
	  	@story = Story.find(params[:story_id])
	  	@vote = @story.votes.new(story_id: @story.id)
	  	@vote.ip_address = request.ip
	  if @story.save
	  	flash[:success] = "Thanks for sharing your #{@story.title} post."
		  	redirect_to story_path(@story)
		else
			flash[:error] = "Whoops, try again."
			redirect_to root_path
		end
end
end