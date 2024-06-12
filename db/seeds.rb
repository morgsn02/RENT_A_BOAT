require 'faker'

User.create(email: "test2@test.com", password: "testtest")
my_user = User.find(1)
puts 'Creating 10 boats'
10.times do
  boat = Boat.new(
    name_boat:    Faker::Company.name, length: { maximum: 10 },
    price_per_day: rand(100..200),
    construction_year: rand(1980..2024),
    puissance: rand(100..300),
    max_person: rand(2..10),
    user_id: my_user.id
    )
    boat.save!
end
puts 'Finished!'
