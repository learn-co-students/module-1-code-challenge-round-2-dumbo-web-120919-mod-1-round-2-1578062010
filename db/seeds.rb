# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

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
meanG1 = Role.create(character_name: "dorothy", salary: 2_000_000, actor_id: tina_fey.id, movie_id: mean_girls.id)
witcher = Role.create(character_name: "geralt of rivia", salary: 3_000_000, actor_id: sporty_spice.id , movie_id: spice_world.id)
sc_sp = Role.create(character_name: "the tree", salary: 2000, actor_id: lindsay_lohan.id, movie_id: mean_girls.id)

puts "Seeding done!"