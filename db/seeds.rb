Review.destroy_all
User.destroy_all

users = []

10.times do
  character = Faker::RickAndMorty.unique.character
  password = Faker::RickAndMorty.unique.location
  users.push(User.create!(name: character,
                          email: character + '@mortiverse.gov',
                          password: password,
                          password_confirmation: password))
end

rng = Random.new

destinations.each do |destination|
  dest = Destination.find_by(location: location)

  3.times do
    dest.reviews.create!(rating: rng.rand(1..5),
                          content: Faker::RickAndMorty.quote,
                          user: users[rng.rand(10)])
  end
end
