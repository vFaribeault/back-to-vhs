puts "Cleaning Database"
Movie.destroy_all
User.destroy_all


puts "Generate user seeds"
yann = User.create!(first_name: "Yann", last_name: "Letertre", email: "yann@lewagon.com", password: "azerty")
francois = User.create!(first_name: "François", last_name: "Dumas Lattaque", email: "francois@lewagon.com", password: "azerty")
valentin = User.create!(first_name: "Valentin", last_name: "Faribeault", email: "valentin@lewagon.com", password: "azerty")
puts "Users well generated"


puts "Generate movie seeds"

jurassic_park = Movie.new(title: "Jurassic Park", price_per_day: 10, address: "Nantes", owner: yann)
file = File.open(Rails.root.join('db/seeds/movie_images/jurassic_park.jpg'))
jurassic_park.photo.attach(io: file, filename: 'jurassic_park.jpg', content_type: 'image/jpg')
jurassic_park.save!

toy_story = Movie.new(title: "Toy Story", price_per_day: 10, address: "Angers", owner: yann)
file = File.open(Rails.root.join('db/seeds/movie_images/toy_story.jpg'))
toy_story.photo.attach(io: file, filename: 'toy_story.jpg', content_type: 'image/jpg')
toy_story.save!

jumanji = Movie.new(title: "Jumanji", price_per_day: 10, address: "Tours", owner: yann)
file = File.open(Rails.root.join('db/seeds/movie_images/jumanji.jpg'))
jumanji.photo.attach(io: file, filename: 'jumanji.jpg', content_type: 'image/jpg')
jumanji.save!

star_wars = Movie.new(title: "Star Wars", price_per_day: 10, address: "Rennes", owner: francois)
file = File.open(Rails.root.join('db/seeds/movie_images/star_wars.jpg'))
star_wars.photo.attach(io: file, filename: 'star_wars.jpg', content_type: 'image/jpg')
star_wars.save!

le_roi_lion = Movie.new(title: "Le roi lion", price_per_day: 10, address: "Le Mans", owner: francois)
file = File.open(Rails.root.join('db/seeds/movie_images/le_roi_lion.jpg'))
le_roi_lion.photo.attach(io: file, filename: 'le_roi_lion.jpg', content_type: 'image/jpg')
le_roi_lion.save!

le_livre_de_la_jungle = Movie.new(title: "Le livre de la jungle", price_per_day: 10, address: "Nantes", owner: francois)
file = File.open(Rails.root.join('db/seeds/movie_images/le_livre_de_la_jungle.jpg'))
le_livre_de_la_jungle.photo.attach(io: file, filename: 'le_livre_de_la_jungle.jpg', content_type: 'image/jpg')
le_livre_de_la_jungle.save!

le_cinquieme_element = Movie.new(title: "Le cinquième élément", price_per_day: 10, address: "Angers", owner: francois)
file = File.open(Rails.root.join('db/seeds/movie_images/le_cinquieme_element.jpg'))
le_cinquieme_element.photo.attach(io: file, filename: 'le_cinquieme_element.jpg', content_type: 'image/jpg')
le_cinquieme_element.save!

leon = Movie.new(title: "Léon", price_per_day: 10, address: "Tours", owner: valentin)
file = File.open(Rails.root.join('db/seeds/movie_images/leon.jpg'))
leon.photo.attach(io: file, filename: 'leon.jpg', content_type: 'image/jpg')
leon.save!

hook = Movie.new(title: "Hook", price_per_day: 10, address: "Rennes", owner: valentin)
file = File.open(Rails.root.join('db/seeds/movie_images/hook.jpg'))
hook.photo.attach(io: file, filename: 'hook.jpg', content_type: 'image/jpg')
hook.save!

james_bond = Movie.new(title: "James Bond", price_per_day: 10, address: "Le Mans", owner: valentin)
file = File.open(Rails.root.join('db/seeds/movie_images/james_bond.jpg'))
james_bond.photo.attach(io: file, filename: 'james_bond.jpg', content_type: 'image/jpg')
james_bond.save!

puts "Movies well generated"
