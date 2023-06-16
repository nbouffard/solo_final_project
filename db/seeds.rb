require 'faker'

puts "clearing database..."
User.destroy_all
puts "Adding seeds..."
5.times do
  User.create!(nickname: Faker::Movies::HarryPotter.character, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.street_address, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), email: Faker::Internet.email, password: 123456 )
end
puts "Finished!"
