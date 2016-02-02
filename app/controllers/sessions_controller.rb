class SessionsController < ApplicationController
	
	def new
	    @user = User.new
	    render :new
	end

  	def create
	    user_params = params.require(:user).permit(:email, :password)
	    @user = User.confirm(user_params)
	    if @user
	      login(@user)
	      redirect_to "/users/#{@user.id}"
	    else
	      redirect_to "/"
	      flash[:alert] = 'Failed to log in! Please try again!'
	    end
  	end

	def destroy
		@current_user = session[:user_id] = nil
		redirect_to "/"
	end

end
