class User < ActiveRecord::Base
	has_secure_password
	 has_many :drinks

	# Favorite drinks of user
	has_many :favorite_drinks# just the 'relationships'
	has_many :favorites, through: :favorite_drinks, source: :drink # the actual recipes a user favorites


	def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
