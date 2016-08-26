require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe "GET #index" do 
    it "responds with status code 200" do 
      get :index 
      expect(response).to have_http_status 200
    end
  end

  it "renders the :index template" do 
    get :index 
    expect(response).to render_template(:index)
  end
end
