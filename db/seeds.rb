# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning Database"
Movie.destroy_all
User.destroy_all

puts "Generate user seeds"
yann = User.create!(first_name: "Yann", last_name: "Letertre", email: "yann@lewagon.com", password: "azerty")
francois = User.create!(first_name: "François", last_name: "Dumas Lattaque", email: "francois@lewagon.com", password: "azerty")
valentin = User.create!(first_name: "Valentin", last_name: "Faribeault", email: "valentin@lewagon.com", password: "azerty")
puts "Users well generated"

puts "Generate movie seeds"
jurassic_park = Movie.new(title: "Jurassic Park", price_per_day: 10, address: "Nantes", owner: yann).save!
toy_story = Movie.new(title: "Toy Story", price_per_day: 10, address: "Angers", owner: yann).save
jumanji = Movie.new(title: "Jumanji", price_per_day: 10, address: "Tours", owner: yann).save
star_wars = Movie.new(title: "Star Wars", price_per_day: 10, address: "Rennes", owner: francois).save
le_roi_lion = Movie.new(title: "Le roi lion", price_per_day: 10, address: "Le Mans", owner: francois).save
le_livre_de_la_jungle = Movie.new(title: "Le livre de la jungle", price_per_day: 10, address: "Nantes", owner: francois).save
le_cinquieme_element = Movie.new(title: "Le cinquième élément", price_per_day: 10, address: "Angers", owner: francois).save
leon = Movie.new(title: "Léon", price_per_day: 10, address: "Tours", owner: valentin).save
hook = Movie.new(title: "Hook", price_per_day: 10, address: "Rennes", owner: valentin).save
james_bond = Movie.new(title: "James Bond", price_per_day: 10, address: "Le Mans", owner: valentin).save
puts "Movies well generated"
