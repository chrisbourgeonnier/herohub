# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
puts "Destroying database..."
Booking.destroy_all
Service.destroy_all
User.destroy_all

puts "Creating user and service [1]"
user = User.create!(email: "brucewayne@gmail.com", password: "iAmBatman")
file = URI.open("https://images1.wionews.com/images/wion/900x1600/2023/6/19/1687169207509_desktopwallpaperlatestbatmanchristianbalebatmanwikiwikiagoodqualitybatmanchristianbale.jpg")
service = Service.create!(superhero_name: "Batman", race: "Human",
  powers: "Peak human condition, detective skills, martial arts expertise, gadgets", fee: 1000000, image_url: "https://images1.wionews.com/images/wion/900x1600/2023/6/19/1687169207509_desktopwallpaperlatestbatmanchristianbalebatmanwikiwikiagoodqualitybatmanchristianbale.jpg", team: "Justice League", bio: "The Dark Knight, protector of Gotham City.", user: user)
service.photo.attach(io: file, filename: "batman.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [2]"
user = User.create!(email: "clarkkent@yahoo.com", password: "SuperSecret123")
file = URI.open("https://i.pinimg.com/1200x/27/d3/a1/27d3a11cea2b9a3b2d0c41b029ec74fa.jpg")
service = Service.create!(superhero_name: "Superman", race: "Kryptonian",
 powers: "Super strength, flight, heat vision, invulnerability", fee: 0, image_url: "https://i.pinimg.com/1200x/27/d3/a1/27d3a11cea2b9a3b2d0c41b029ec74fa.jpg", team: "Justice League", bio: "Last son of Krypton, the Man of Steel.", user: user)
service.photo.attach(io: file, filename: "superman.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [3]"
user = User.create!(email: "wadewilson@hotmail.com", password: "DeadpoolRules")
file = URI.open("https://i.pinimg.com/originals/e7/e7/3a/e7e73ac51c986e24d816c8612d4a304f.jpg")
service = Service.create!(superhero_name: "Deadpool", race: "Human mutate",
   powers: "Regenerative healing factor, skilled martial artist, breaking the fourth wall", fee: 500000, image_url: "https://i.pinimg.com/originals/e7/e7/3a/e7e73ac51c986e24d816c8612d4a304f.jpg", team: "X-Force", bio: "The Merc with a Mouth, known for his humor and combat skills.", user: user)
service.photo.attach(io: file, filename: "deadpool.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [4]"
user = User.create!(email: "steverogers@gmail.com", password: "CaptainAmerica1")
file = URI.open("https://iphoneswallpapers.com/wp-content/uploads/2020/03/Captain-America-iPhone-Wallpaper.jpg")
service = Service.create!(superhero_name: "Captain America", race: "Super-Soldier",
   powers: "Superhuman strength, agility, expert martial artist, vibranium shield", fee: 0, image_url: "https://iphoneswallpapers.com/wp-content/uploads/2020/03/Captain-America-iPhone-Wallpaper.jpg", team: "Avengers", bio: "Super-soldier and symbol of justice.", user: user)
service.photo.attach(io: file, filename: "captain_america.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [5]"
user = User.create!(email: "deep_seven@gmail.com", password: "TheDeep007")
file = URI.open("https://hollywoodlife.com/wp-content/uploads/2020/09/the-boys-season-2-amazon-embed-1.jpg")
service = Service.create!(superhero_name: "The Deep", race: "Human",
   powers: "Aquatic adaptation, marine telepathy", fee: 300000, image_url: "https://hollywoodlife.com/wp-content/uploads/2020/09/the-boys-season-2-amazon-embed-1.jpg", team: "The Seven", bio: "Aquatic superhero with a connection to marine life.", user: user)
service.photo.attach(io: file, filename: "the_deep.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [6]"
user = User.create!(email: "viltrumite@hotmail.com", password: "Omn1M4n!")
file = URI.open("https://i.gyazo.com/39473ef516d87a935b44dbdbd7587c5e.jpg")
service = Service.create!(superhero_name: "Omni-Man", race: "Viltrumite",
   powers: "Super strength, flight, enhanced senses", fee: 800000, image_url: "https://i.gyazo.com/39473ef516d87a935b44dbdbd7587c5e.jpg", team: "Global Defense Agency", bio: "Powerful Viltrumite guardian.", user: user)
service.photo.attach(io: file, filename: "omni_man.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [7]"
user = User.create!(email: "arthurcurry@yahoo.com", password: "Aquaman2023")
file = URI.open("https://i.pinimg.com/originals/a9/ba/f5/a9baf56bf22845683319b1d1b7e05f30.jpg")
service = Service.create!(superhero_name: "Aquaman", race: "Atlantean",
   powers: "Superhuman strength, underwater breathing, control over marine life", fee: 700000, image_url: "https://i.pinimg.com/originals/a9/ba/f5/a9baf56bf22845683319b1d1b7e05f30.jpg", team: "Justice League", bio: "King of Atlantis and defender of the seas.", user: user)
service.photo.attach(io: file, filename: "aquaman.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [8]"
user = User.create!(email: "logan@hotmail.com", password: "W0lv3r1n3!")
file = URI.open("https://i.gyazo.com/1aa25bf63a9bc7edf5c7b72cd69d59dd.jpg")
service = Service.create!(superhero_name: "Wolverine", race: "Mutant",
   powers: "Regenerative healing, adamantium claws, enhanced senses", fee: 400000, image_url: "https://i.gyazo.com/1aa25bf63a9bc7edf5c7b72cd69d59dd.jpg", team: "X-Men", bio: "Ferocious mutant with retractable claws.", user: user)
service.photo.attach(io: file, filename: "wolverine.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [9]"
user = User.create!(email: "jonnjonzz@gmail.com", password: "MartianManhunter")
file = URI.open("https://i.gyazo.com/2d49a0e3a4286d0e85791d31f4bdad5a.jpg")
service = Service.create!(superhero_name: "Martian Manhunter", race: "Martian",
   powers: "Shape-shifting, telepathy, super strength, flight", fee: 0, image_url: "https://i.gyazo.com/2d49a0e3a4286d0e85791d31f4bdad5a.jpg", team: "Justice League", bio: "Last survivor of Mars, powerful telepath and shapeshifter.", user: user)
service.photo.attach(io: file, filename: "martian_manhunter.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [10]"
user = User.create!(email: "loki@yahoo.com", password: "MischiefGod")
file = URI.open("https://i.gyazo.com/c84e955eca819ca5d7e76afdd2b0eb3d.jpg")
service = Service.create!(superhero_name: "Loki", race: "Frost Giant (adopted by Asgardians)",
 powers: "Illusions, sorcery, shape-shifting", fee: 600000, image_url: "https://i.gyazo.com/c84e955eca819ca5d7e76afdd2b0eb3d.jpg", team: "Asgardians", bio: "Trickster god with a complex history.", user: user)
service.photo.attach(io: file, filename: "loki.jpg", content_type: "image/jpg")
service.save
puts "All done!"
