class User < ApplicationRecord
	has_secure_password
	
	has_many :reviews
	has_many :stars

	has_many :reviewed_movies, through: :reviews, source: :movies
	has_many :starred_movies, through: :stars, source: :movies 
end
