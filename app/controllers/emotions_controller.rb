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

	def favorite
		@user = User.find(current_user)
		@drink = Drink.find(params[:id])
		type = params[:type]
		if type == "favorite"
		  current_user.favorites << @drink
		  redirect_to "/users/#{@user.id}"

		elsif type == "unfavorite"
		  current_user.favorites.delete(@drink)
		  redirect_to "/users/#{@user.id}"

		else
		  # Type missing, nothing happens
		  redirect_to "/users/#{@user.id}"
		 
		end
	end


end
