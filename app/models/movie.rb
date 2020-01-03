class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles
 
    def cast_role(actor, character_name, salary)
    Role.create(
        movie_id: self.id,
        actor_id: actor.id, 
        salary: 100000
        character_name: character_name
    )
    end

    def all_credits
        self.map do |m|
            return "#{self.role.character_name}: Played by #{self.actor.name}", "#{self.role.character_name}: Played by #{self.actor.name}"
        end
    end

    def fire_actor(actor)
        youre_fired = self.actors.where(actor_id: actor.id)
        youre_fired.destroy_all
    end

end




