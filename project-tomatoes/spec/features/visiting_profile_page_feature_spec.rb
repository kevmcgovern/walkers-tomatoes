require 'rails_helper'


describe "user visits their profile page" do
  user = User.create(name: "tomtom", password_digest: "123")
  review = Review.create(description: "This was pretty poor", user_id: 11, movie_id: 1)
  it "shows the user's reviews" do
    visit '/users/11'
    within('#reviews-archive') do
      expect(page).to have_content('This was pretty poor')
    end
  end

end
