puts "Cleaning Database"
Booking.destroy_all
Movie.destroy_all
User.destroy_all

puts "Generate user seeds"
yann = User.create!(first_name: "Yann", last_name: "Letertre", email: "yann@lewagon.com", password: "azerty")
francois = User.create!(first_name: "François", last_name: "Dumas Lattaque", email: "francois@lewagon.com", password: "azerty")
valentin = User.create!(first_name: "Valentin", last_name: "Faribeault", email: "valentin@lewagon.com", password: "azerty")
puts "Users well generated"


puts "Generate movie seeds"

jurassic_park = Movie.new(
  title: "Jurassic Park",
  description: "John Hammond (Richard Attenborough) is the owner of Jurassic Park, a theme park located on Isla Nublar. After an incident with a velociraptor, Hammond brings in three specialists to sign off on the park to calm investors. The specialists, paleontologist Alan Grant (Sam Neill), paleobotanist Ellie Sattler (Laura Dern), and chaos theorist Ian Malcolm (Jeff Goldblum) are surprised to see the island park's main attraction are living, breathing dinosaurs, created with a mixture of fossilized DNA and genetic cross-breeding/cloning..",
  price_per_day: 6,
  address: "Nantes",
  release_year: 1993,
  owner: yann)
file = File.open(Rails.root.join('db/seeds/movie_images/jurassic_park.jpg'))
jurassic_park.photo.attach(io: file, filename: 'jurassic_park.jpg', content_type: 'image/jpg')
jurassic_park.save!

toy_story = Movie.new(
  title: "Toy Story",
  description: "In a world where toys are living things but pretend to be lifeless when humans are present, a group of toys, owned by young Andy Davis, are caught off-guard when Andy's birthday party is moved up a week, as his family (including his mother and infant sister Molly) are preparing to move the following week. Andy's toys – including Bo Peep the shepherdess, Mr. Potato Head, Rex the dinosaur, Hamm the piggy bank and Slinky Dog – fear that they will be replaced by new toys from the birthday..",
  price_per_day: 8,
  address: "Angers",
  release_year: 1995,
  owner: yann)
file = File.open(Rails.root.join('db/seeds/movie_images/toy_story.jpg'))
toy_story.photo.attach(io: file, filename: 'toy_story.jpg', content_type: 'image/jpg')
toy_story.save!

jumanji = Movie.new(
  title: "Jumanji",
  description: "The story centers on a supernatural board game that releases jungle-based hazards upon its players with every turn they take. As a boy in 1969, Alan Parrish became trapped inside the game itself while playing with his friend Sarah Whittle. Twenty-six years later, siblings Judy and Peter Shepherd find the game, begin playing and then unwittingly release the now-adult Alan. After tracking down Sarah, the quartet resolves to finish the game in order to reverse all of the destruction it has caused..",
  price_per_day: 5,
  address: "Tours",
  release_year: 1995,
  owner: yann)
file = File.open(Rails.root.join('db/seeds/movie_images/jumanji.jpg'))
jumanji.photo.attach(io: file, filename: 'jumanji.jpg', content_type: 'image/jpg')
jumanji.save!

star_wars = Movie.new(
  title: "Star Wars",
  description: "The Trade Federation upsets order in the Galactic Republic by blockading the planet Naboo in preparation for a full-scale invasion. The Republic's leader, Supreme Chancellor Finis Valorum, dispatches Jedi Knight Qui-Gon Jinn and his apprentice, Obi-Wan Kenobi, to negotiate with Trade Federation Viceroy Nute Gunray. Darth Sidious, a Sith Lord and the Trade Federation's secret benefactor, orders the Viceroy to kill the Jedi and begin their invasion with an army of battle droids. The Jedi escape and flee to Naboo. During the invasion, Qui-Gon saves the life of a Gungan outcast, Jar Jar Binks..",
  price_per_day: 9,
  address: "Rennes",
  release_year: 1999,
  owner: francois)
file = File.open(Rails.root.join('db/seeds/movie_images/star_wars.jpg'))
star_wars.photo.attach(io: file, filename: 'star_wars.jpg', content_type: 'image/jpg')
star_wars.save!

the_lion_king = Movie.new(
  title: "The Lion King",
  description: "In the Pride Lands of Africa, a pride of lions rules over the animal kingdom from Pride Rock. King Mufasa and Queen Sarabi present their newborn son, Simba, to the gathering animals by Rafiki the mandrill, the kingdom's shaman and advisor. Mufasa shows Simba the Pride Lands and explains to him the responsibilities of kingship and the circle of life, which connects all living things. Mufasa's younger brother, Scar, covets the throne and plots to get rid of Mufasa and Simba so that he may become king..",
  price_per_day: 8,
  address: "Le Mans",
  release_year: 1994,
  owner: francois)
file = File.open(Rails.root.join('db/seeds/movie_images/the_lion_king.jpg'))
the_lion_king.photo.attach(io: file, filename: 'the_lion_king.jpg', content_type: 'image/jpg')
the_lion_king.save!

the_jungle_book = Movie.new(
  title: "The Jungle Book",
  description: "Mowgli, a young orphan boy, is found in a basket in the deep jungles of India by Bagheera, a black panther who promptly takes him to Raksha, a mother wolf who has just had cubs. She and her mate, Rama, raise him along with their own cubs and after ten years, Mowgli becomes well acquainted with jungle life and plays with his wolf siblings. Bagheera is pleased with how happy Mowgli is now, but also worries that Mowgli must eventually return to his own kind.",
  price_per_day: 6,
  address: "Nantes",
  release_year: 1967,
  owner: francois)
file = File.open(Rails.root.join('db/seeds/movie_images/the_jungle_book.jpg'))
the_jungle_book.photo.attach(io: file, filename: 'the_jungle_book.jpg', content_type: 'image/jpg')
the_jungle_book.save!

the_fifth_element = Movie.new(
  title: "The Fifth Element",
  description: "In 1914, aliens known as Mondoshawans meet their human contact, a priest of a secret order, at an ancient Egyptian temple. They take, for safekeeping, the only weapon capable of defeating a great evil which appears every 5,000 years. They promise to return the weapon before the great evil's re-emergence. The weapon consists of the four classical elements, as four engraved stones, plus a 'fifth element' in a sarcophagus. In 2263,[b] the great evil appears in deep space as a giant living fireball..",
  price_per_day: 7,
  address: "Angers",
  release_year: 1997,
  owner: francois)
file = File.open(Rails.root.join('db/seeds/movie_images/the_fifth_element.jpg'))
the_fifth_element.photo.attach(io: file, filename: 'the_fifth_element.jpg', content_type: 'image/jpg')
the_fifth_element.save!

leon = Movie.new(
  title: "Leon",
  description: "Léon is an Italian hitman (or 'cleaner', as he refers to himself) living a solitary life in New York City's Little Italy. His work comes from a mafioso named 'Old Tony'. One day, Léon meets Mathilda Lando, a lonely 12-year-old girl. Mathilda lives with her dysfunctional family in an apartment down the hall, and has stopped attending class at her school for troubled girls. Mathilda's abusive father attracts the ire of corrupt DEA agents, who have been paying him to stash cocaine in his apartment..",
  price_per_day: 6,
  address: "Tours",
  release_year: 1994,
  owner: valentin)
file = File.open(Rails.root.join('db/seeds/movie_images/leon.jpg'))
leon.photo.attach(io: file, filename: 'leon.jpg', content_type: 'image/jpg')
leon.save!

hook = Movie.new(
  title: "Hook",
  description: "Successful San Francisco corporate lawyer Peter Banning, unaware that his work is straining his relationship with his wife Moira and their children (Jack and Maggie), the family prepares to fly to London to visit Moira's grandmother, Wendy Darling. In London, Peter, Moira and Wendy attend a charity dinner in Wendy's honor, leaving Wendy's old friend Tootles and her housekeeper Liza with the children. When they return the children are missing, and there's a ransom note from Captain James Hook. Peter involves the authorities, but Wendy insists that only he can save Jack and Maggie, as he is really Peter Pan..",
  price_per_day: 8,
  address: "Rennes",
  release_year: 1991,
  owner: valentin)
file = File.open(Rails.root.join('db/seeds/movie_images/hook.jpg'))
hook.photo.attach(io: file, filename: 'hook.jpg', content_type: 'image/jpg')
hook.save!

james_bond = Movie.new(
  title: "James Bond",
  description: "In 1986, MI6 agents James Bond and Alec Trevelyan infiltrate a Soviet chemical weapons facility in Arkhangelsk. While Trevelyan is seemingly caught and killed by Colonel Arkady Grigorovich Ourumov, the facility's commanding officer, Bond manages to destroy the site before escaping. While undergoing an assessment nine years later, after the dissolution of the Soviet Union, Bond attempts to prevent Xenia Onatopp, a member of the Janus crime syndicate, from stealing a Eurocopter Tiger attack helicopter during a military demonstration in Monte Carlo, but fails..",
  price_per_day: 5,
  address: "Le Mans",
  release_year: 1995,
  owner: valentin)
file = File.open(Rails.root.join('db/seeds/movie_images/james_bond.jpg'))
james_bond.photo.attach(io: file, filename: 'james_bond.jpg', content_type: 'image/jpg')
james_bond.save!

puts "Movies well generated"