FactoryGirl.define do
  factory :user do
    name "username"
    email "email"
    password "password"
    # password_confirmation pw
    #role :member
  end
end
