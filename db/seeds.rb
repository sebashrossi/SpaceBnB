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
1.times  do
  Planet.create!(name: 'Mars', description: 'red', address: '123 mars avenue', user_id: user.id, price: 100, guest_limit: 1_000_000)
  puts 'Creating planet....'
end
