class Movie < ApplicationRecord
	has_many :reviews 
	has_many :stars 

	has_many :reviewers, through: :reviews, source: :user
	has_many :starrers, through: :stars, source: :user
end
