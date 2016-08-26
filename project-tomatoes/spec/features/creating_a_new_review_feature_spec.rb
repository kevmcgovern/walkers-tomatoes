require 'rails_helper'

feature "user creates a new review" do
	describe "the user visits a movie show page" do
	movie = Movie.create(title: "Test Test Test")
		it "shows the review form partial" do
			visit '/movies/15'
			expect(page).to have_selector('#movie-reviews')
		end
		describe "user submits new review" do
			# current_user = User.find(51)
			
			it "saves a new review to the database" do
				visit '/movies/15'
				within('#movie-reviews') do
					# current_user.logged_in? == true
					fill_in 'review_description', :with => "Testing, testing"
					# p find('input#review_user_id', visible: false).set(value: 51)
					fill_in '#review_user_id', :with => '1'
				end
				expect { click_button('Submit') }.to change {Review.count}.by(1)
			end
		end
	end
end