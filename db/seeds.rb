# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
puts "Destroying database..."
Service.destroy_all
User.destroy_all
puts "Creating user and service [1]"
file = URI.open("https://static.wikia.nocookie.net/nolanverse/images/4/41/Christian_bale_bruce_wayne.jpg/revision/latest?cb=20130102205807")
user = User.create!(email: "brucewayne@gmail.com", password: "iAmBatman", username: "Bruce Wayne")
user.avatar.attach(io: file, filename: "bruce_wayne.jpg", content_type: "image/jpg")
user.save
file = URI.open("https://images1.wionews.com/images/wion/900x1600/2023/6/19/1687169207509_desktopwallpaperlatestbatmanchristianbalebatmanwikiwikiagoodqualitybatmanchristianbale.jpg")
service = Service.create!(superhero_name: "Batman", race: "Human",
  powers: "Peak human condition, detective skills, martial arts expertise, gadgets", fee: 1000000, image_url: "https://images1.wionews.com/images/wion/900x1600/2023/6/19/1687169207509_desktopwallpaperlatestbatmanchristianbalebatmanwikiwikiagoodqualitybatmanchristianbale.jpg", team: "Justice League", bio: "The Dark Knight, protector of Gotham City.", user: user)
service.photo.attach(io: file, filename: "batman.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [2]"
file = URI.open("https://static.wikia.nocookie.net/lana-lang/images/7/7c/MosClark_Kent.jpg/revision/latest?cb=20131202020934")
user = User.create!(email: "clarkkent@yahoo.com", password: "SuperSecret123", username: "Clark Kent")
user.avatar.attach(io: file, filename: "clark_kent.jpg", content_type: "image/jpg")
user.save
file = URI.open("https://i.pinimg.com/1200x/27/d3/a1/27d3a11cea2b9a3b2d0c41b029ec74fa.jpg")
service = Service.create!(superhero_name: "Superman", race: "Kryptonian",
 powers: "Super strength, flight, heat vision, invulnerability", fee: 0, image_url: "https://i.pinimg.com/1200x/27/d3/a1/27d3a11cea2b9a3b2d0c41b029ec74fa.jpg", team: "Justice League", bio: "Last son of Krypton, the Man of Steel.", user: user)
service.photo.attach(io: file, filename: "superman.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [3]"
file = URI.open("https://i.gyazo.com/e02dd213f1cddbfc955eb6886f50dd84.jpg")
user = User.create!(email: "wadewilson@hotmail.com", password: "DeadpoolRules", username: "Wade Wilson")
user.avatar.attach(io: file, filename: "wade_wilson.jpg", content_type: "image/jpg")
user.save
file = URI.open("https://i.pinimg.com/originals/e7/e7/3a/e7e73ac51c986e24d816c8612d4a304f.jpg")
service = Service.create!(superhero_name: "Deadpool", race: "Human mutate",
   powers: "Regenerative healing factor, skilled martial artist, breaking the fourth wall", fee: 500000, image_url: "https://i.pinimg.com/originals/e7/e7/3a/e7e73ac51c986e24d816c8612d4a304f.jpg", team: "X-Force", bio: "The Merc with a Mouth, known for his humor and combat skills.", user: user)
service.photo.attach(io: file, filename: "deadpool.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [4]"
file = URI.open("https://img.buzzfeed.com/buzzfeed-static/static/2016-05/27/12/campaign_images/buzzfeed-prod-fastlane02/how-steve-rogers-became-one-of-marvels-biggest-vi-2-27268-1464366141-1_dblbig.jpg")
user = User.create!(email: "steverogers@gmail.com", password: "CaptainAmerica1", username: "Steve Rogers")
user.avatar.attach(io: file, filename: "steve_rogers.jpg", content_type: "image/jpg")
user.save
file = URI.open("https://iphoneswallpapers.com/wp-content/uploads/2020/03/Captain-America-iPhone-Wallpaper.jpg")
service = Service.create!(superhero_name: "Captain America", race: "Super-Soldier",
   powers: "Superhuman strength, agility, expert martial artist, vibranium shield", fee: 0, image_url: "https://iphoneswallpapers.com/wp-content/uploads/2020/03/Captain-America-iPhone-Wallpaper.jpg", team: "Avengers", bio: "Super-soldier and symbol of justice.", user: user)
service.photo.attach(io: file, filename: "captain_america.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [5]"
file = URI.open("https://uproxx.com/wp-content/uploads/2020/09/the-deep-the-boys-feat.jpg?w=710")
user = User.create!(email: "deep_seven@gmail.com", password: "TheDeep007", username: "The Deep")
user.avatar.attach(io: file, filename: "deep.jpg", content_type: "image/jpg")
user.save
file = URI.open("https://hollywoodlife.com/wp-content/uploads/2020/09/the-boys-season-2-amazon-embed-1.jpg")
service = Service.create!(superhero_name: "The Deep", race: "Human",
   powers: "Aquatic adaptation, marine telepathy", fee: 300000, image_url: "https://hollywoodlife.com/wp-content/uploads/2020/09/the-boys-season-2-amazon-embed-1.jpg", team: "The Seven", bio: "Aquatic superhero with a connection to marine life.", user: user)
service.photo.attach(io: file, filename: "the_deep.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [6]"
file = URI.open("https://i.gyazo.com/39473ef516d87a935b44dbdbd7587c5e.jpg")
user = User.create!(email: "viltrumite@hotmail.com", password: "Omn1M4n!", username: "Omni-Man")
user.avatar.attach(io: file, filename: "omniman.jpg", content_type: "image/jpg")
user.save
file = URI.open("https://i.gyazo.com/39473ef516d87a935b44dbdbd7587c5e.jpg")
service = Service.create!(superhero_name: "Omni-Man", race: "Viltrumite",
   powers: "Super strength, flight, enhanced senses", fee: 800000, image_url: "https://i.gyazo.com/39473ef516d87a935b44dbdbd7587c5e.jpg", team: "Global Defense Agency", bio: "Powerful Viltrumite guardian.", user: user)
service.photo.attach(io: file, filename: "omni_man.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [7]"
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Jason_Momoa_by_Gage_Skidmore.jpg/175px-Jason_Momoa_by_Gage_Skidmore.jpg")
user = User.create!(email: "arthurcurry@yahoo.com", password: "Aquaman2023", username: "Arthur Curry")
user.avatar.attach(io: file, filename: "arthur_curry.jpg", content_type: "image/jpg")
user.save
file = URI.open("https://i.pinimg.com/originals/a9/ba/f5/a9baf56bf22845683319b1d1b7e05f30.jpg")
service = Service.create!(superhero_name: "Aquaman", race: "Atlantean",
   powers: "Superhuman strength, underwater breathing, control over marine life", fee: 700000, image_url: "https://i.pinimg.com/originals/a9/ba/f5/a9baf56bf22845683319b1d1b7e05f30.jpg", team: "Justice League", bio: "King of Atlantis and defender of the seas.", user: user)
service.photo.attach(io: file, filename: "aquaman.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [8]"
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/d/d5/Hugh_Jackman_as_Wolverine.png")
user = User.create!(email: "logan@hotmail.com", password: "W0lv3r1n3!", username: "Logan")
user.avatar.attach(io: file, filename: "logan.png", content_type: "image/png")
user.save
file = URI.open("https://i.gyazo.com/1aa25bf63a9bc7edf5c7b72cd69d59dd.jpg")
service = Service.create!(superhero_name: "Wolverine", race: "Mutant",
   powers: "Regenerative healing, adamantium claws, enhanced senses", fee: 400000, image_url: "https://i.gyazo.com/1aa25bf63a9bc7edf5c7b72cd69d59dd.jpg", team: "X-Men", bio: "Ferocious mutant with retractable claws.", user: user)
service.photo.attach(io: file, filename: "wolverine.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [9]"
file = URI.open("https://static.wikia.nocookie.net/marvel_dc/images/e/e7/Henry_Henshaw_%28Supergirl_TV_Series%29.jpg/revision/latest?cb=20151103201815")
user = User.create!(email: "jonnjonzz@gmail.com", password: "MartianManhunter", username: "J'onn J'onzz")
user.avatar.attach(io: file, filename: "jonn_jonzz.jpg", content_type: "image/jpg")
user.save
file = URI.open("https://i.gyazo.com/2d49a0e3a4286d0e85791d31f4bdad5a.jpg")
service = Service.create!(superhero_name: "Martian Manhunter", race: "Martian",
   powers: "Shape-shifting, telepathy, super strength, flight", fee: 0, image_url: "https://i.gyazo.com/2d49a0e3a4286d0e85791d31f4bdad5a.jpg", team: "Justice League", bio: "Last survivor of Mars, powerful telepath and shapeshifter.", user: user)
service.photo.attach(io: file, filename: "martian_manhunter.jpg", content_type: "image/jpg")
service.save
puts "Creating user and service [10]"
file = URI.open("https://i.pinimg.com/564x/91/b1/33/91b133cd31694b15c80efe3dae86f740.jpg")
user = User.create!(email: "loki@yahoo.com", password: "MischiefGod", username: "Loki Laufeyson")
user.avatar.attach(io: file, filename: "loki2.jpg", content_type: "image/jpg")
user.save
file = URI.open("https://i.gyazo.com/c84e955eca819ca5d7e76afdd2b0eb3d.jpg")
service = Service.create!(superhero_name: "Loki", race: "Frost Giant (adopted by Asgardians)",
 powers: "Illusions, sorcery, shape-shifting", fee: 600000, image_url: "https://i.gyazo.com/c84e955eca819ca5d7e76afdd2b0eb3d.jpg", team: "Asgardians", bio: "Trickster god with a complex history.", user: user)
service.photo.attach(io: file, filename: "loki.jpg", content_type: "image/jpg")
service.save
# puts "Creating user and service [11]"
# file = URI.open("https://static.wikia.nocookie.net/dccu/images/3/34/Diana_Prince_ZSJL_Promo_Still.png/revision/latest/scale-to-width/360?cb=20220731203940")
# user = User.create!(email: "dianaprince@gmail.com", password: "WonderWoman2023", username: "Diana Prince")
# user.avatar.attach(io: file, filename: "diana_prince.png", content_type: "image/png")
# user.save
# file = URI.open("https://static.wikia.nocookie.net/dccu/images/6/6f/JL_Wonder_Woman.jpg/revision/latest?cb=20160914003449")
# service = Service.create!(superhero_name: "Wonder Woman", race: "Amazonian",
#    powers: "Super strength, lasso of truth, indestructible bracelets", fee: 500000, image_url: "https://static.wikia.nocookie.net/dccu/images/6/6f/JL_Wonder_Woman.jpg/revision/latest?cb=20160914003449", team: "Justice League", bio: "Warrior princess and champion of justice.", user: user)
# service.photo.attach(io: file, filename: "wonder_woman.jpg", content_type: "image/jpg")
# service.save
# puts "Creating user and service [12]"
# file = URI.open("https://gyazo.com/d44c7c3a8125dd15a45f12c6fa6a07fb")
# user = User.create!(email: "barryallen@gmail.com", password: "Flash2023", username: "Barry Allen")
# user.avatar.attach(io: file, filename: "barry_allen.jpg", content_type: "image/jpg")
# user.save
# file = URI.open("https://gyazo.com/c48d6082901201564fdb2bec94f0f846")
# service = Service.create!(superhero_name: "The Flash", race: "Human",
#    powers: "Super speed, time manipulation", fee: 300000, image_url: "https://gyazo.com/c48d6082901201564fdb2bec94f0f846", team: "Justice League", bio: "Scarlet Speedster and master of the Speed Force.", user: user)
# service.photo.attach(io: file, filename: "flash.jpg", content_type: "image/jpg")
# service.save
# puts "Creating user and service [13]"
# file = URI.open("https://image.guardian.co.uk/sys-images/Film/Pix/gallery/2004/07/13/pparker3.jpg")
# user = User.create!(email: "peterparker@gmail.com", password: "SpiderMan2023", username: "Peter Parker (Earth-22)")
# user.avatar.attach(io: file, filename: "peter_parker_earth22.jpg", content_type: "image/jpg")
# user.save
# file = URI.open("https://gyazo.com/11ea124028b16a15e9e590c22f08036a")
# service = Service.create!(superhero_name: "Spider-Man", race: "Human",
#    powers: "Superhuman agility, web-slinging, wall-crawling, spider-sense", fee: 500000, image_url: "https://gyazo.com/11ea124028b16a15e9e590c22f08036a", team: "Spider Family", bio: "Friendly neighborhood web-slinger.", user: user)
# service.photo.attach(io: file, filename: "spider_man.jpg", content_type: "image/jpg")
# service.save
# puts "Creating user and service [14]"
# file = URI.open("https://prd-rteditorial.s3.us-west-2.amazonaws.com/wp-content/uploads/2017/04/15134625/starlord.jpg")
# user = User.create!(email: "peterquill@gmail.com", password: "StarLord2023", username: "Peter Quill (Star-Lord)")
# user.avatar.attach(io: file, filename: "peter_quill_star_lord.jpg", content_type: "image/jpg")
# user.save
# file = URI.open("https://gyazo.com/51cb90e5c2def8e9647cb5a1e9570a4c")
# service = Service.create!(superhero_name: "Star-Lord", race: "Human",
#    powers: "Masterful pilot, tactical skills, elemental gun", fee: 400000, image_url: "https://gyazo.com/51cb90e5c2def8e9647cb5a1e9570a4c", team: "Guardians of the Galaxy", bio: "Legendary outlaw and leader of the Guardians.", user: user)
# service.photo.attach(io: file, filename: "star_lord.jpg", content_type: "image/jpg")
# service.save
# puts "Creating user and service [15]"
# file = URI.open("https://www.williamjacket.com/wp-content/uploads/2021/04/The-Boys-S02-Annie-January-Cotton-Jacket.jpg")
# user = User.create!(email: "anniejanuary@gmail.com", password: "Starlight2023", username: "Annie January (Starlight)")
# user.avatar.attach(io: file, filename: "annie_january_starlight.png", content_type: "image/png")
# user.save
# file = URI.open("https://gyazo.com/f346a3646aaf7bc34734bd6edd5df9a1")
# service = Service.create!(superhero_name: "Starlight", race: "Human",
#    powers: "Light manipulation, flight, energy projection", fee: 300000, image_url: "https://gyazo.com/f346a3646aaf7bc34734bd6edd5df9a1", team: "The Seven", bio: "Bright and optimistic superhero in The Seven.", user: user)
# service.photo.attach(io: file, filename: "starlight.jpg", content_type: "image/jpg")
# service.save
# puts "Creating user and service [16]"
# file = URI.open("https://gyazo.com/dc7b4a1e4de52849bf7090d1f6b73560")
# user = User.create!(email: "caroldanvers@gmail.com", password: "CaptainMarvel2023", username: "Carol Danvers (Captain Marvel)")
# user.avatar.attach(io: file, filename: "carol_danvers_captain_marvel.jpg", content_type: "image/jpg")
# user.save
# file = URI.open("https://static.wikia.nocookie.net/marvel-cinematic-universe/images/1/10/06captain-marvel1.jpg/revision/latest?cb=20191003151550")
# service = Service.create!(superhero_name: "Captain Marvel", race: "Human/Kree",
#    powers: "Superhuman strength, energy absorption, flight", fee: 600000, image_url: "https://static.wikia.nocookie.net/marvel-cinematic-universe/images/1/10/06captain-marvel1.jpg/revision/latest?cb=20191003151550", team: "The Avengers", bio: "Powerful hero with cosmic abilities.", user: user)
# service.photo.attach(io: file, filename: "captain_marvel.jpg", content_type: "image/jpg")
# service.save
puts "All done!"

# file = URI.open("")
# user.avatar.attach(io: file, filename: ".jpg", content_type: "image/jpg")
# user.save
