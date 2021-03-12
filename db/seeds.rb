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
User.all.each { |user| puts "Destroying user...#{user.email}"}
User.destroy_all

# USER 1 ------- SEOUL

user1 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '123456')
planet1 = Planet.create!(name: 'Endor', description: 'Make fun of Ewoks all you want — I would absolutely live on the forest moon of Endor. It combines the stunning natural beauty of Northern California, the cuddliness of a trip to Build-a-Bear Workshop, and tree houses straight out of a Dwell spread. The locals will either throw you on a kebab or hail you as a god, and honestly, I’ll take my chances.', address: '802-6, Hannam-dong, Yongsan-gu, Seoul', user_id: user1.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/5/50/Endor_FFGRebellion.png/revision/latest/scale-to-width-down/700?cb=20170629163352')
planet1.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet1.name}"

planet5 = Planet.create!(name: 'Bespin', description: 'Would you live on a gas planet? I’m not so sure. I feel like it would be like living on a cruise ship; I’d need some solid ground beneath my feet eventually. But if you can manage it — and just as important, afford it — you’ll find charming hosts, magnificent views, and some of the nicest dining rooms in the Galaxy. Visit with your dad!', address: '102 Sajik-ro, Pirun-dong, Jongno-gu, Seoul, South Korea', user_id: user1.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/2/2c/Bespin_EotECR.png/revision/latest?cb=20170527220537')
planet5.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet5.name}"

planet6 = Planet.create!(name: 'Tatooine', description: 'The first and most iconic Star Wars location. For what’s supposed to be the middle of nowhere, people in this series really can’t stop visiting, can they? I guess that’s just the Force at work (or a harried screenwriter, though often they amount to the same thing). The character of Tatooine would shift slightly over the course of the series; I think I prefer the version we got in A New Hope, which mixed relatable teenage boredom (the deleted scenes sell the American Graffiti–in–space vibe) with a real sense of mystery. Like the island from Lost, Tatooine lost its mystique the more we saw of it, as it turned out the planet was also home to a slug who was the most feared crime lord in the Galaxy, a big hole with teeth in it, a bunch of podracers, and, once upon a time, the child who would become Darth Vader. Still, we’ll always have that binary sunset and the Mos Eisley cantina, which told us all we needed to know about this strange new universe.', address: '304-36 Sajik-dong, Jongno-gu, Seoul, South Korea', user_id: user1.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/b/b0/Tatooine_TPM.png/revision/latest?cb=20131214162357')
planet6.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet6.name}"

# USER 2 --------- LONDON

user2 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '123456')
planet2 = Planet.create!(name: 'Naboo', description: 'Yes, visiting Naboo means your risk of interacting with Jar Jar Binks increases exponentially. And the final battle takes place in a bit of country so featureless it might as well be the Windows XP background. If you can get past all that — as well as the locals’ weird habit of electing teen girls to rule them — you’ll find the most beautiful examples of Italianate architecture in all the galaxy. Plus, I’m told the lakes are to die for.', address: '83 Upper St, London, N1 0NU', user_id: user2.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/5/50/Naboo.jpg/revision/latest?cb=20060318190228')
planet2.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet2.name}"

planet3 = Planet.create!(name: 'Coruscant', description: 'The Galaxy’s capital was another planet that had been built up for years in the old EU before we finally got a good look at it in the prequels. And boy, did we see a lot of it in the prequels. Coruscant doesn’t give us much that we didn’t get from earlier sci-fi megalopolises, but I appreciate the little glimpses of life outside the corridors of power — a diner and
an opera! This kind of futuristic city life isn’t for everyone (I imagine the rents are prohibitive), but at least the sanitation department seems to be doing a much better job than the one in Blade Runner.', address: '60 Cross Street, London, N1 2BA', user_id: user2.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/9/92/Coruscant_SWCT.png/revision/latest/top-crop/width/360/height/450?cb=20200927225715')
planet3.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet3.name}"

planet4 = Planet.create!(name: 'Ahch-To', description: 'Speaking of dads, when I was 13 my father took me on a trip to the isolated Irish peninsula where he’d spent summer vacations as a child. I had a pretty bad time: My hearty relations took a wicked glee in subjecting themselves to all manner of unpleasant experiences, the appeal of which was baffling to me. (Also I was fat, which made getting in and out of a wetsuit a trial.) But over subsequent visits I slowly came to love the place, and now that I’m an adult I’ve found I enjoy even the terrible wind and the rain. This doesn’t really have anything to do with Star Wars, except that it means Ahch-To, which was filmed on Ireland’s southwest coast, had an elemental hold on me from the first time I saw it. And that was before I’d even met the judgmental fish-nuns!

', address: '2 York Rd, Battersea, London SW11 3QA, UK', user_id: user2.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/0/04/Ahch-To_TLJTVD.png/revision/latest?cb=20190604002222')
planet4.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet4.name}"


# USER 3 ------ PARIS

user3 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '123456')
planet6 = Planet.create!(name: 'Geonosis', description: 'Geonosis is kept from the bottom spot by a prospering industrial economy and some innovative arena design. But everything else is pretty unpleasant, especially the Geonesians, wretched bug creatures that you almost feel bad for when the Jedi (and eventually the Empire) start slaughtering them en masse.', address: '91  Faubourg Saint Honoré, Paris, France', user_id: user3.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/6/6d/Geonosis_AotC.png/revision/latest/scale-to-width-down/1000?cb=20121231120327')
planet6.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet6.name}"

planet7 = Planet.create!(name: 'Kashyyyk', description: 'Star Wars fans know that, in the initial planning stages for Return of the Jedi, Chewbacca’s home world was the original choice for what later became the forest moon of Endor. For those fans inclined to look down on the Ewoks, the switch seemed a monumental blunder, and the news that the prequels would right the wrong by giving us the real Kashyyyk was greeted with jubilation. That version turned out to share the prequels’ characteristic CGI sheen, but what we saw was still pretty cool: There are plenty of tree houses, and it turns out the Wookies travel around in buglike helicopters. Plus, who wouldn’t want to hang out with Chewbacca? Unfortunately, it wouldn’t last: In both the new and old canons, Kashyyyk was environmentally devastated by the Imperial occupation, which sent the vast majority of its population into slavery.', address: '72  rue La Boétie, Paris, France', user_id: user3.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/e/ea/Kashyyyk-SW-MTHC.png/revision/latest?cb=20190605010641')
planet7.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet7.name}"

planet8 = Planet.create!(name: 'Cantonica', description: 'Finally, some glamour. In the casino city of Canto Bight, you can take a break from the starrin’ and the warrin’ to hobnob with some of the Galaxy’s most stylish people (to say nothing of the Heptoonians). Many of them are arms dealers, but hey, nobody’s perfect.', address: '57  Place de la Madeleine, Paris, France', user_id: user3.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/6/6d/Scarif_SWCT.png/revision/latest?cb=20181010053537')
planet8.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet8.name}"


# USER 4 ------ NEW YORK

user4 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '123456')
planet9 = Planet.create!(name: 'Scarif', description: 'The climax of Rogue One gave us something we’d never seen before in the Star Wars universe: an island paradise! Don’t ask me why the Empire chose to set up their most top-secret military facility here when you’d think they would have been much better served using it for tourism, though who am I to second-guess the strategic thinking of a bunch of space-fascists. (Wookiepedia hand-waves some business about Scarif’s mantle being filled with “dense metals” that were ideal for spacecraft construction. Sure.) It probably ranks highly on the list of the Galaxy’s most Instagrammable vacation spots, as long as you avoid the part that got blown up.', address: '55 East 10th Street, New York, NY 10003, United States', user_id: user4.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/d/da/Cantonica_TLJVD.png/revision/latest?cb=20190604002745')
planet9.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet9.name}"

planet10 = Planet.create!(name: 'Yavin 4', description: 'Another weirdly uninhabited moon, but at least this one has a backstory: The people who originally lived here were all massacred by the Sith thousands of years before the series takes place. There’s no denying the power of those temples turned hangers (shot at real Mayan ruins in Guatemala) which give the Rebellion an aesthetic heft to match the Empire’s. Bumped up a spot due to my lingering affection for the sadly no-longer-canon Young Jedi Knights series, which was mostly set here.', address: '20 W 34th St, New York, NY 10001, United States', user_id: user4.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/6/6d/Scarif_SWCT.png/revision/latest?cb=20181010053537')
planet10.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet10.name}"

planet11 = Planet.create!(name: 'Takodana', description: 'Did you know this was filmed in the Lake District? I have a lovely mental image of William Wordsworth wandering around and stumbling upon Maz Kanata. (I’d ship them.) We never did figure out how Anakin’s old lightsaber got there.', address: '721 Broadway, New York, NY 10003, USA', user_id: user4.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/esstarwars/images/f/f6/Tak.png/revision/latest?cb=20160527210512')
planet11.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet11.name}"

# USER 5 ------- SEATTLE

user5 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '123456')
planet12 = Planet.create!(name: 'Alderaan', description: 'With Alderaan, it’s all about the timing. As long as you die of old age shortly before the year 0BBY, well, you had a perfectly marvelous life in what Alderaan tourism board member Bail Organa once called “a planet of beauty,” with enough “nature, poetry, philosophy, art, couture, [and] cuisine” to shake a swagger stick at. But if you’re still kicking around during the events of A New Hope, well, I’m sorry. We’ll split the difference and put it at no. 12.', address: '9241 13th Ave SW
Seattle, Washington(WA), 98106', user_id: user5.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/4/4a/Alderaan.jpg/revision/latest?cb=20061211013805')
planet12.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet12.name}"

planet13 = Planet.create!(name: 'Kamino', description: 'It’s an unmapped planet that’s one big ocean, and the only habitation seems to be a freaky cloning facility. And yet, I’ve got a little bit of an affinity for Kamino. I think it’s the Kaminoans themselves. Look how polite they are when Obi-Wan visits: They send him straight to meet the prime minister! And they’re so proud of the new clone army they’ve created that the Jedi can’t bring himself to admit he has no idea what they’re talking about. George Lucas wanted Obi-Wan’s Episode II plotline to play as noir, but for one wonderful scene, it becomes something close to farce.', address: '400 Broad St, Seattle, WA 98109, United States', user_id: user5.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/5/52/Kamino-DB.png/revision/latest/scale-to-width-down/450?cb=20150920190527')
planet13.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet13.name}"

planet14 = Planet.create!(name: 'Felucia', description: 'Hi, Felucia. This is the jungle planet that saw the death of Jedi Master Aayla Secura in the Order 66 montage, and early in the planning process for the new trilogy it was going to be the site of the new Resistance base before the filmmakers decided to go in a different direction. (D’Qar got the gig instead.) You can see why: It’s all very colorful and computer-generated in a way that screams “prequels.” The Felucians themselves seem nice, though.', address: '9668 Rainier Ave S
Seattle, Washington(WA), 98118', user_id: user5.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/a/a2/Felucia_SWCT.png/revision/latest/scale-to-width-down/830?cb=20181010054430')
planet14.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet14.name}"

# USER 6 ------- BEIJING

user6 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '123456')
planet15 = Planet.create!(name: 'Dagobah', description: 'It’s perfectly safe for droids, but maybe not for humans. Still, you’ve got to admit, Dagobah’s got character — there has never been a movie swamp that’s swampier than this one. (It’s one of the great spooky forests ever created on a British soundstage, which have given us many great spooky forests.) And just listen to this list of indigenous species: “bogwings, dragonsnakes, butcherbugs, sleens, vine snakes, and swamp slugs” — pure gross-out poetry.', address: 'Beijing Shi Beijing 100076', user_id: user6.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/4/48/Dagobah_ep3.jpg/revision/latest?cb=20100122163146')
planet15.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet15.name}"

planet16 = Planet.create!(name: 'Jakku', description: 'It’s not Tatooine. Get that? It’s. Not. Tatooine. If anything, this desert planet seems to be even more remote a backwater than the original one, which at least had enough of an economy to support a thriving podrace circuit. Though if nothing else, at least Jakku gave us those awe-inspiring Star Destroyer wrecks, the first — and still most alluring — images of the new trilogy.', address: 'Wangfujing, Dongcheng, Beijing, China', user_id: user6.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/f/ff/Jakku-PoeDameronFlightLog.png/revision/latest/scale-to-width-down/480?cb=20170720130554')
planet16.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet16.name}"

planet17 = Planet.create!(name: 'Hoth', description: 'It’s an inhospitable ice planet whose apex predator is the abominable snowman’s less-fuckable cousin, but it’s also home to tauntauns, the best Star Wars animal. I’d risk a lot to ride a tauntaun just once.', address: 'China, Beijing, Chaoyang, Dongtucheng Rd, 1号院1号楼3单元 邮政编码: 100013', user_id: user6.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/1/1d/Hoth_SWCT.png/revision/latest?cb=20160630022322')
planet17.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet17.name}"


# USER 7 ------- TOKYO

user7 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '123456')
planet18 = Planet.create!(name: 'Mygeeto', description: 'Oh, yes, Mygeeto, the cold planet glimpsed briefly during the Order 66 montage when the Clone Troopers frag their Jedi commander, the phrenological phenomenon Ki Adi Mundi. The crystal-mining colony was originally occupied by a race of cute lemur creatures, who were quickly subjugated by the Galaxy’s financial elite and reduced to thralldom. Then it was the site of the longest battle of the Clone Wars, as Republican and Separatist armies became locked in a brutal urban stalemate. Altogether an unpleasant place.', address: '1 Chome-1-2 Oshiage, Sumida City, Tokyo 131-8634, Japan', user_id: user7.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/e/e5/Mygeeto_GE2.jpg/revision/latest/scale-to-width-down/534?cb=20190525003238')
planet18.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet18.name}"

planet19 = Planet.create!(name: 'Eadu', description: 'Man, Rogue One had some crappy planets, didn’t it? This one’s great if you love rain, murder, scientists being held against their will, and cliffs. Its small native population is mostly comprised of nerf herders, who I’m sure do not appreciate being the subject of the Galaxy’s most popular classist insult.', address: '4 Chome-2-8 Shibakoen, Minato City, Tokyo 105-0011, Japan', user_id: user7.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/3/38/Eadu-SWCT.png/revision/latest?cb=20181010053249')
planet19.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet19.name}"

planet20 = Planet.create!(name: 'Mustafar', description: 'Not only is Mustafar a planet full of lava, its most famous inhabitant is Darth Vader, who seems likely to be the Galaxy’s least-inviting neighbor. (“I find your lack of lawn-care disturbing.”) What about the other inhabitants? Per Wookiepedia, “The planet’s native Mustafarian species lived in underground caves created by lava fleas as they ate through the planet’s crust, and made their armor from the heat-resistant shells of the creatures.” Oh.', address: '3-20-7 Kamezawa, Sumida, Tokyo, Japan', user_id: user7.id, price: rand(1...1000), guest_limit: rand(1...5000))
pic = URI.open('https://static.wikia.nocookie.net/starwars/images/6/61/Mustafar-TROSGG.png/revision/latest?cb=20200722072411')
planet20.photo.attach(io: pic, filename: 'planet-image.jpg', content_type: 'image/jpg')
puts "Creating planet....#{planet20.name}"


puts 'Done.'
