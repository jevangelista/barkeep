class WelcomeController < ApplicationController

  def splash
	@user = User.new
  	render :splash
  end

end
