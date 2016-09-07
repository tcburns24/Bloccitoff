require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:my_user) { User.create!(email: "user1@blocitoff.com", password: "password", password_confirmation: "password") }

  describe "GET show" do
    before do
      user = User.create!(email: "user2@blocitoff.com", password: "password", password_confirmation: "password")
      sign_in user
    end

    it "returns http success" do
      get :show, {id: my_user.id}
      expect(response).to have_http_status(:success)
    end
  end




end
