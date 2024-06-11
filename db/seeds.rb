require 'faker'

User.create(email: "test2@test.com", password: "testtest")

puts 'Creating 10 boats'
10.times do
  boat = Boat.new(
    name_boat:    Faker::Company.name,
    price_per_day: rand(100..200),
    construction_year: rand(1980..2024),
    puissance: rand(100..300),
    max_person: rand(2..10)
    )
    boat.save!
end
puts 'Finished!'

    create_table "bookings", force: :cascade do |t|
      t.date "date_start"
      t.date "date_end"
      t.integer "cost"
      t.string "city"
      t.bigint "boat_id", null: false
      t.bigint "user_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["boat_id"], name: "index_bookings_on_boat_id"
      t.index ["user_id"], name: "index_bookings_on_user_id"
      end

      create_table "boats", force: :cascade do |t|
        t.integer "price_per_day"
        t.integer "construction_year"
        t.integer "puissance"
        t.integer "max_person"
        t.string "name_boat"
        t.bigint "user_id", null: false
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.index ["user_id"], name: "index_boats_on_user_id"
      end
