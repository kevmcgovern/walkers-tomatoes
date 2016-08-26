require 'rails_helper'

feature "user creates a new review" do
	describe "the user visits a movie show page" do
	movie = Movie.create(title: "Test Test Test")
		it "shows the review form partial" do
			visit '/movies/15'
			expect(page).to have_selector('#movie-reviews')
		end
		describe "user submits new review" do
			current_user = FactoryGirl.create(:user)
			it "saves a new review to the database" do
				visit '/movies/15'
				within('#movie-reviews') do
					fill_in 'review_description', :with => "Testing, testing"
				end
				expect { click_button('Submit') }.to change {Review.count}.by(1)
			end
		end
	end
end