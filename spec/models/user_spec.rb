require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  let(:item) { create(:item) }

  it { is_expected.to have_many(:items) }

  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to have_secure_password }
  it { is_expected.to validate_length_of(:password).is_at_least(6) }

  describe "attributes" do
    it "should have email, password, and password_confirmation attributes" do
      expect(user).to have_attributes(email: user.email, password: user.password, password_confirmation: user.password_confirmation)
    end
  end
end
