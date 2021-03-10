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
planetPics = ['https://upload.wikimedia.org/wikipedia/commons/a/a7/PIA19833-RockyExoplanet-HD219134b-ArtistConcept-20150730.jpg', 'https://www.slashgear.com/wp-content/uploads/2013/07/hubble_hd_189733b_gas_giant_glass_planet.png']
countries = ['New York', 'Paris', 'Seoul', 'London', 'Tokyo', 'Beijing', 'Seattle']

user1 = User.create!(email: Faker::Internet.email, password: '123456')
planet1 = Planet.create!(name: 'Endor', description: 'Make fun of Ewoks all you want — I would absolutely live on the forest moon of Endor. It combines the stunning natural beauty of Northern California, the cuddliness of a trip to Build-a-Bear Workshop, and tree houses straight out of a Dwell spread. The locals will either throw you on a kebab or hail you as a god, and honestly, I’ll take my chances.', address: countries.sample, user_id: user1.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/5/50/Endor_FFGRebellion.png/revision/latest/scale-to-width-down/700?cb=20170629163352')
planet1.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet1.name}"

user2 = User.create!(email: Faker::Internet.email, password: '123456')
planet2 = Planet.create!(name: 'Naboo', description: 'Yes, visiting Naboo means your risk of interacting with Jar Jar Binks increases exponentially. And the final battle takes place in a bit of country so featureless it might as well be the Windows XP background. If you can get past all that — as well as the locals’ weird habit of electing teen girls to rule them — you’ll find the most beautiful examples of Italianate architecture in all the galaxy. Plus, I’m told the lakes are to die for.', address: countries.sample, user_id: user2.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/5/50/Naboo.jpg/revision/latest?cb=20060318190228')
planet2.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet2.name}"

user3 = User.create!(email: Faker::Internet.email, password: '123456')
planet3 = Planet.create!(name: 'Coruscant', description: 'The Galaxy’s capital was another planet that had been built up for years in the old EU before we finally got a good look at it in the prequels. And boy, did we see a lot of it in the prequels. Coruscant doesn’t give us much that we didn’t get from earlier sci-fi megalopolises, but I appreciate the little glimpses of life outside the corridors of power — a diner and
an opera! This kind of futuristic city life isn’t for everyone (I imagine the rents are prohibitive), but at least the sanitation department seems to be doing a much better job than the one in Blade Runner.', address: countries.sample, user_id: user3.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/9/92/Coruscant_SWCT.png/revision/latest/top-crop/width/360/height/450?cb=20200927225715')
planet3.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet3.name}"

user4 = User.create!(email: Faker::Internet.email, password: '123456')
planet4 = Planet.create!(name: 'Ahch-To', description: 'Speaking of dads, when I was 13 my father took me on a trip to the isolated Irish peninsula where he’d spent summer vacations as a child. I had a pretty bad time: My hearty relations took a wicked glee in subjecting themselves to all manner of unpleasant experiences, the appeal of which was baffling to me. (Also I was fat, which made getting in and out of a wetsuit a trial.) But over subsequent visits I slowly came to love the place, and now that I’m an adult I’ve found I enjoy even the terrible wind and the rain. This doesn’t really have anything to do with Star Wars, except that it means Ahch-To, which was filmed on Ireland’s southwest coast, had an elemental hold on me from the first time I saw it. And that was before I’d even met the judgmental fish-nuns!

', address: countries.sample, user_id: user4.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/0/04/Ahch-To_TLJTVD.png/revision/latest?cb=20190604002222')
planet4.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet4.name}"

user5 = User.create!(email: Faker::Internet.email, password: '123456')
planet5 = Planet.create!(name: 'Bespin', description: 'Would you live on a gas planet? I’m not so sure. I feel like it would be like living on a cruise ship; I’d need some solid ground beneath my feet eventually. But if you can manage it — and just as important, afford it — you’ll find charming hosts, magnificent views, and some of the nicest dining rooms in the Galaxy. Visit with your dad!', address: countries.sample, user_id: user5.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/2/2c/Bespin_EotECR.png/revision/latest?cb=20170527220537')
planet5.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet5.name}"

user6 = User.create!(email: Faker::Internet.email, password: '123456')
planet6 = Planet.create!(name: 'Tatooine', description: 'The first and most iconic Star Wars location. For what’s supposed to be the middle of nowhere, people in this series really can’t stop visiting, can they? I guess that’s just the Force at work (or a harried screenwriter, though often they amount to the same thing). The character of Tatooine would shift slightly over the course of the series; I think I prefer the version we got in A New Hope, which mixed relatable teenage boredom (the deleted scenes sell the American Graffiti–in–space vibe) with a real sense of mystery. Like the island from Lost, Tatooine lost its mystique the more we saw of it, as it turned out the planet was also home to a slug who was the most feared crime lord in the Galaxy, a big hole with teeth in it, a bunch of podracers, and, once upon a time, the child who would become Darth Vader. Still, we’ll always have that binary sunset and the Mos Eisley cantina, which told us all we needed to know about this strange new universe.', address: countries.sample, user_id: user6.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/b/b0/Tatooine_TPM.png/revision/latest?cb=20131214162357')
planet6.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet6.name}"

user7 = User.create!(email: Faker::Internet.email, password: '123456')
planet7 = Planet.create!(name: 'Kashyyyk', description: 'Star Wars fans know that, in the initial planning stages for Return of the Jedi, Chewbacca’s home world was the original choice for what later became the forest moon of Endor. For those fans inclined to look down on the Ewoks, the switch seemed a monumental blunder, and the news that the prequels would right the wrong by giving us the real Kashyyyk was greeted with jubilation. That version turned out to share the prequels’ characteristic CGI sheen, but what we saw was still pretty cool: There are plenty of tree houses, and it turns out the Wookies travel around in buglike helicopters. Plus, who wouldn’t want to hang out with Chewbacca? Unfortunately, it wouldn’t last: In both the new and old canons, Kashyyyk was environmentally devastated by the Imperial occupation, which sent the vast majority of its population into slavery.', address: countries.sample, user_id: user7.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/e/ea/Kashyyyk-SW-MTHC.png/revision/latest?cb=20190605010641')
planet7.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet7.name}"

user8 = User.create!(email: Faker::Internet.email, password: '123456')
planet8 = Planet.create!(name: 'Cantonica', description: 'Finally, some glamour. In the casino city of Canto Bight, you can take a break from the starrin’ and the warrin’ to hobnob with some of the Galaxy’s most stylish people (to say nothing of the Heptoonians). Many of them are arms dealers, but hey, nobody’s perfect.', address: countries.sample, user_id: user8.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/6/6d/Scarif_SWCT.png/revision/latest?cb=20181010053537')
planet8.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet8.name}"

user9 = User.create!(email: Faker::Internet.email, password: '123456')
planet9 = Planet.create!(name: 'Scarif', description: 'The climax of Rogue One gave us something we’d never seen before in the Star Wars universe: an island paradise! Don’t ask me why the Empire chose to set up their most top-secret military facility here when you’d think they would have been much better served using it for tourism, though who am I to second-guess the strategic thinking of a bunch of space-fascists. (Wookiepedia hand-waves some business about Scarif’s mantle being filled with “dense metals” that were ideal for spacecraft construction. Sure.) It probably ranks highly on the list of the Galaxy’s most Instagrammable vacation spots, as long as you avoid the part that got blown up.', address: countries.sample, user_id: user9.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/d/da/Cantonica_TLJVD.png/revision/latest?cb=20190604002745')
planet9.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet9.name}"

user10 = User.create!(email: Faker::Internet.email, password: '123456')
planet10 = Planet.create!(name: 'Yavin 4', description: 'Another weirdly uninhabited moon, but at least this one has a backstory: The people who originally lived here were all massacred by the Sith thousands of years before the series takes place. There’s no denying the power of those temples turned hangers (shot at real Mayan ruins in Guatemala) which give the Rebellion an aesthetic heft to match the Empire’s. Bumped up a spot due to my lingering affection for the sadly no-longer-canon Young Jedi Knights series, which was mostly set here.', address: countries.sample, user_id: user10.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/6/6d/Scarif_SWCT.png/revision/latest?cb=20181010053537')
planet10.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet10.name}"

user11 = User.create!(email: Faker::Internet.email, password: '123456')
planet11 = Planet.create!(name: 'Takodana', description: 'Did you know this was filmed in the Lake District? I have a lovely mental image of William Wordsworth wandering around and stumbling upon Maz Kanata. (I’d ship them.) We never did figure out how Anakin’s old lightsaber got there.', address: countries.sample, user_id: user11.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/f/f6/Tak.png/revision/latest?cb=20160527210512')
planet11.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet11.name}"

user12 = User.create!(email: Faker::Internet.email, password: '123456')
planet12 = Planet.create!(name: 'Alderaan', description: 'With Alderaan, it’s all about the timing. As long as you die of old age shortly before the year 0BBY, well, you had a perfectly marvelous life in what Alderaan tourism board member Bail Organa once called “a planet of beauty,” with enough “nature, poetry, philosophy, art, couture, [and] cuisine” to shake a swagger stick at. But if you’re still kicking around during the events of A New Hope, well, I’m sorry. We’ll split the difference and put it at no. 12.', address: countries.sample, user_id: user12.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/4/4a/Alderaan.jpg/revision/latest?cb=20061211013805')
planet12.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet12.name}"


puts 'Done.'
