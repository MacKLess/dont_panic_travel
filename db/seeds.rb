Review.destroy_all
User.destroy_all

users = []

10.times do |n|
  character = Faker::RickAndMorty.unique.character
  password = Faker::RickAndMorty.unique.location
  n += 1
  users.push(User.create!(name: character,
                          email: 'email' + n.to_s + '@mortiverse.gov',
                          password: password + password,
                          password_confirmation: password + password))
end

rng = Random.new

trips.each do |trip|
  trip = Trip.find_by(location: location)

  3.times do
    trip.reviews.create!(rating: rng.rand(1..5),
                          content: Faker::RickAndMorty.quote,
                          user: users[rng.rand(10)])
  end
end
