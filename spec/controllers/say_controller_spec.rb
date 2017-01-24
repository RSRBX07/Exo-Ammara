require 'rails_helper'

RSpec.describe SayController, type: :controller do

  describe "GET #hello" do
    it "returns http success" do
      get :hello
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #good" do
    it "returns http success" do
      get :good
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #bay" do
    it "returns http success" do
      get :bay
      expect(response).to have_http_status(:success)
    end
  end

end
