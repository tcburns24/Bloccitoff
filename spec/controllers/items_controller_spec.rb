require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:item) { User.item.create!) }

  describe "POST create" do
    it "returns http redirect" do
      post :create
      expect(response).to redirect_to(new_session_path)
    end
  end
