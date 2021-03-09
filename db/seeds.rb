# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying all planets'
Planet.destroy_all
User.destroy_all
  user = User.create!(email: 'blabla@gmail.com', password: '123456')
10.times  do
  Planet.create!(name: 'Andrew', description: 'Sucks', address: 'Andrew Sucks 123', user_id: user.id)
  puts 'Creating planet....'
end
