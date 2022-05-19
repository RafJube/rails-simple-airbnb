puts "Start generate flats"

5.times do
  flat = Flat.new
  flat.name = Faker::Restaurant.name
  flat.address = Faker::Address.full_address
  flat.description = Faker::Restaurant.description
  flat.price_per_night = (rand * 200).round
  flat.number_of_guests = (rand * 10).round
  flat.save
end

puts "End of flats's generation"
