require 'rails_helper'

RSpec.describe DummyController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #:name,:emp_id" do
    it "returns http success" do
      get ::name,:emp_id
      expect(response).to have_http_status(:success)
    end
  end

end
