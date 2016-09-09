require 'faker'

3.times do
  Item.create!(
    name: Faker::University.name
    user_id: @user 
  )
end
