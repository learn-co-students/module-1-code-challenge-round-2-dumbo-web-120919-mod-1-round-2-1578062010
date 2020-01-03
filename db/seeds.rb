# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database

require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)
puts "Deleting movie/actor data..."
#Movie.destroy_all
#Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here
lidnsey = Role.create(actor_id: 1, movie_id: 1, salary: 5000000, character_name:  "Katy")
tina = Role.create(actor_id: 2, movie_id: 1, salary: 70000000, character_name: "Math Teacher")
baby = Role.create(actor_id: 3, movie_id: 2, salary: 500000, character_name:  "Baby Spice")
ginger = Role.create(actor_id: 4, movie_id: 2, salary: 300000, character_name: "Ginger Spice")
scary = Role.create(actor_id: 5, movie_id: 2, salary: 400000, character_name:  "Scary Spice")
sporty = Role.create(actor_id: 6, movie_id: 2, salary: 350000, character_name: "Sporty Spice")
posh = Role.create(actor_id: 7, movie_id: 2, salary: 1000000, character_name: "Posh Spice")

puts "Seeding done!"