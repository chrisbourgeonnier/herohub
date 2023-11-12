# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
Service.destroy_all
User.destroy_all

user = User.create!(email: "brucewayne@gmail.com", password: "iAmBatman")

Service.create!(superhero_name: "Batman", race: "Human",
  powers: "Peak human condition, detective skills, martial arts expertise, gadgets", fee: 1000000, image_url: "https://images1.wionews.com/images/wion/900x1600/2023/6/19/1687169207509_desktopwallpaperlatestbatmanchristianbalebatmanwikiwikiagoodqualitybatmanchristianbale.jpg", team: "Justice League", bio: "The Dark Knight, protector of Gotham City.", user: user)

user = User.create!(email: "clarkkent@yahoo.com", password: "SuperSecret123")

Service.create!(superhero_name: "Superman", race: "Kryptonian",
 powers: "Super strength, flight, heat vision, invulnerability", fee: 0, image_url: "https://i.pinimg.com/1200x/27/d3/a1/27d3a11cea2b9a3b2d0c41b029ec74fa.jpg", team: "Justice League", bio: "Last son of Krypton, the Man of Steel.", user: user)

user = User.create!(email: "wadewilson@hotmail.com", password: "DeadpoolRules")

Service.create!(superhero_name: "Deadpool", race: "Human mutate",
   powers: "Regenerative healing factor, skilled martial artist, breaking the fourth wall", fee: 500000, image_url: "https://i.pinimg.com/originals/e7/e7/3a/e7e73ac51c986e24d816c8612d4a304f.jpg", team: "X-Force", bio: "The Merc with a Mouth, known for his humor and combat skills.", user: user)

user = User.create!(email: "steverogers@gmail.com", password: "CaptainAmerica1")

Service.create!(superhero_name: "Captain America", race: "Super-Soldier",
   powers: "Superhuman strength, agility, expert martial artist, vibranium shield", fee: 0, image_url: "https://iphoneswallpapers.com/wp-content/uploads/2020/03/Captain-America-iPhone-Wallpaper.jpg", team: "Avengers", bio: "Super-soldier and symbol of justice.", user: user)

user = User.create!(email: "deep_seven@gmail.com", password: "TheDeep007")

Service.create!(superhero_name: "The Deep", race: "Human",
   powers: "Aquatic adaptation, marine telepathy", fee: 300000, image_url: "https://hollywoodlife.com/wp-content/uploads/2020/09/the-boys-season-2-amazon-embed-1.jpg", team: "The Seven", bio: "Aquatic superhero with a connection to marine life.", user: user)

user = User.create!(email: "viltrumite@hotmail.com", password: "Omn1M4n!")

Service.create!(superhero_name: "Omni-Man", race: "Viltrumite",
   powers: "Super strength, flight, enhanced senses", fee: 800000, image_url: "https://cdn.vox-cdn.com/thumbor/Auz05yj65j5m0XO2gF3h9D172FM=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/25002918/omni_man_mk1.jpg", team: "Global Defense Agency", bio: "Powerful Viltrumite guardian.", user: user)

user = User.create!(email: "arthurcurry@yahoo.com", password: "Aquaman2023")

Service.create!(superhero_name: "Aquaman", race: "Atlantean",
   powers: "Superhuman strength, underwater breathing, control over marine life", fee: 700000, image_url: "https://i.pinimg.com/originals/a9/ba/f5/a9baf56bf22845683319b1d1b7e05f30.jpg", team: "Justice League", bio: "King of Atlantis and defender of the seas.", user: user)

user = User.create!(email: "logan@hotmail.com", password: "W0lv3r1n3!")

Service.create!(superhero_name: "Wolverine", race: "Mutant",
   powers: "Regenerative healing, adamantium claws, enhanced senses", fee: 400000, image_url: "https://deadline.com/wp-content/uploads/2022/09/MCDXMEN_FE105.jpg", team: "X-Men", bio: "Ferocious mutant with retractable claws.", user: user)

user = User.create!(email: "jonnjonzz@gmail.com", password: "MartianManhunter")

Service.create!(superhero_name: "Martian Manhunter", race: "Martian",
   powers: "Shape-shifting, telepathy, super strength, flight", fee: 0, image_url: "https://static.wikia.nocookie.net/dccu/images/1/15/Martian_Manhunter.png/revision/latest?cb=20210318114952", team: "Justice League", bio: "Last survivor of Mars, powerful telepath and shapeshifter.", user: user)

user = User.create!(email: "loki@yahoo.com", password: "MischiefGod")

Service.create!(superhero_name: "Loki", race: "Frost Giant (adopted by Asgardians)",
 powers: "Illusions, sorcery, shape-shifting", fee: 600000, image_url: "https://hips.hearstapps.com/hmg-prod/images/tom-hiddleston-loki-1623746316.jpg?crop=0.420xw:1.00xh;0.310xw,0&resize=1200:*", team: "Asgardians", bio: "Trickster god with a complex history.", user: user)
