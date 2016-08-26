require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
	describe "POST #create" do
		context "when valid params are passed" do
			it "responds with a status code 302" do
				post :create, { review: { description: "Testing. 1,2,3", user_id: 1, movie_id: 1 } }
				expect(response).to have_http_status 302
			end
		end
	end
end
