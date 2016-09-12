require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:my_user) { User.create!(email: "user1@blocitoff.com", password: "password", password_confirmation: "password") }

  before(:each) do
    @my_user = FactoryGirl.create(:user)
    sign_in @my_user
  end

  describe "POST create" do
    it "increases the number of Items by 1" do
      expect{ item :create, name: my_name}.to change(Item,:count).by(1)
    end
  end

  describe "DELETE destroy" do
    it "deletes the item" do
      delete :destroy, format: :js, id: my_item.id
      count = Item.where({id: my_post.id}).size
      expect(count).to eq 0
    end

    it "returns http success" do
      delete :destroy, format: :js, id: my_item.id
      expect(response).to have_http_status(:success)
    end
  end
end
