require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  before(:each) do
    @my_user = FactoryGirl.create(:user)
    sign_in @my_user
  end

  let(:item) { create(:item, user: @my_user) }
  let(:item2) { create(:item, user: @my_user) }

  describe "POST create" do
    it "increases the number of Items by 1" do
      expect { post :create, user_id: @my_user.id, item: {name: "test name"}}.to change(Item,:count).by(1)
    end
  end

  describe "DELETE destroy" do

    before do
      sign_in @my_user
    end

    it "deletes the item" do
      delete :destroy, format: :js, user_id: @my_user.id, id: item.id
      count = Item.where({id: item.id}).count
      expect(count).to eq 0
    end

    it "returns http success" do
      delete :destroy, format: :js, user_id: @my_user.id, id: item.id
      expect(response).to have_http_status(:success)
    end
  end
end
