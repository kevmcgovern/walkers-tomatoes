require 'rails_helper'

feature "user creates a new review" do
	describe "the user visits a movie show page" do
	movie = Movie.create(title: "Test Test Test")
		it "shows the review form partial" do
			visit '/movies/15'
			expect(page).to have_selector('#movie-reviews')
		end

	end
end