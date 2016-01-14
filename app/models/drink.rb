class Drink < ActiveRecord::Base
	belongs_to :emotion

	  # Favorited by users
	has_many :favorite_drinks # just the 'relationships'
	has_many :favorited_by, through: :favorite_drinks, source: :user # the actual users favoriting a recipe
end
