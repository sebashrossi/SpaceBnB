# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

puts 'Destroying all planets'
Planet.destroy_all
puts 'Destroying all users'
User.destroy_all
planetPics = ['https://upload.wikimedia.org/wikipedia/commons/a/a7/PIA19833-RockyExoplanet-HD219134b-ArtistConcept-20150730.jpg', '']
20.times  do
  countries = ['New York', 'Paris', 'Seoul', 'London', 'Tokyo', 'Beijing', 'Seattle']
  user = User.create!(email: Faker::Internet.email, password: '123456')
  planet = Planet.create!(name: Faker::Movies::StarWars.unique.planet, description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4), address: countries.sample, user_id: user.id, price: rand(1...1000), guest_limit: rand(1...5000))
  pic = URI.open(Faker::LoremFlickr.image(size: "1900x1080", search_terms: ['planet']))
  planet.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
  puts "Creating planet....#{planet.name}"
end

puts 'Done.'
