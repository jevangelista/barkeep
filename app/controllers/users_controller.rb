class UsersController < ApplicationController

	def index
		@users = User.all
		render :index
	end

	def new
		@user = User.new
		render :new
	end

 	def create
	    user_params = params.require(:user).permit(:name, :email, :city, :password, :password_confirmation)
	    @user = User.create(user_params)

	    login(@user) # <-- login the user
    	redirect_to emotions_path
 	end

 	def show
 		@user = User.find(params[:id])
 		@favorites = current_user.favorites
 		render :show
 	end

 	def destroy
 		@favorite = current_user.favorite_drinks.find([:favorite_drink_id]).destroy
 	end

	def favorite
		@user = User.find(params[:id])
		@drink = Drink.find(params[:drink_id])
		type = params[:type]
		if type == "unfavorite"
		  current_user.favorites.delete(@drink)
		  redirect_to "/users/#{@user.id}"

		else
		  # Type missing, nothing happens
		  redirect_to "/users/#{@user.id}"
		 
		end
	end

end

