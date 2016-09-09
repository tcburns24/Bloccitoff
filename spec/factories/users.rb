FactoryGirl.define do
  pw = "password"
  factory :user do
    name "username"
    sequence(:email){|n| "user#{n}@blocitoff.com"}
    password pw
    password_confirmation pw
    #role :member 
  end
end
