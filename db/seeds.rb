require 'faker'

10.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
end

member = User.create!(
  email: 'member@example.com',
  password: 'helloworld'
  )

users = User.all

50.times do
  Item.create!(
    user: users.sample,
    name: Faker::University.name
  )
end

items = Item.all

puts "seed finished"
puts "#{Item.count} items created"
puts "#{User.count} users created"
