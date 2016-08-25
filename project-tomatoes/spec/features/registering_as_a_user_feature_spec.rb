require 'rails_helper'

feature "signing up" do
  scenario "the user clicks on the sign up link" do
    visit '/'
    within("#navbar") do
      click_link('Sign Up')
    end
    within('h1') do
      expect(page).to have_content("Signup!")
    end
  end

  let (:user) {FactoryGirl.create(:user)}
  scenario "the user fills out the form and submits" do
    visit '/users/new'
    within('form') do
      fill_in 'user[email]', :with => user.email
      fill_in 'user[password]', :with => "123"
      fill_in 'user[password_confirmation]', :with => "123"
    end
    expect { click_button('Submit') }.to change {User.count}.by(1)
  end

end
