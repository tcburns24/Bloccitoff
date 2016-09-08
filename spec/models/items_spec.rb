require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { create(:item) }

  it { is_expected.to belong_to(:user) }

  describe "attributes" do
    it "has a title and body" do
      expect(item).to have_attributes(title: item.title, body: item.body)
    end
  end
end
