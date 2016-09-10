require 'faker'

member = User.create!(
  name: 'Member',
  email: 'member@example.com',
  password: 'helloworld'
  )
end


10.times do
  Item.create!(
    name: Faker::University.name
    user: @user
  )
end
