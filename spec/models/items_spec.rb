require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { create(:item) }

  it { is_expected.to belong_to(:user) }

  describe "attributes" do
    it "has a name" do
      expect(item).to have_attributes(title: item.title, name: item.name)
    end
  end
end
