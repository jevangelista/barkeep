class EmotionsController < ApplicationController

	def index
		@emotions = Emotion.all
		@randemotion = @emotions.order("RANDOM()").first
	end

	def show
		@emotion = Emotion.find(params[:id])
		@drink = @emotion.drinks.order("RANDOM()").first
 		render :show
	end

end
