class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles


def cast_role(actor, character_name, salary)
  Role.create(movie_id: self.id, actor_id: actor.id, salary: salary, character_name: character_name)
end

def all_credits
  roles.map do |inst|
   "#{inst.character_name}: Played by #{inst.actor.name},"
  end
end

def fire_actor(actor)
  outta_here = Role.find_by(actor.id)
  outta_here.destroy
end

end