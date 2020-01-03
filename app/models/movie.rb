class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        Role.create(movie_id: self.id, actor_id: actor.id, salary: salary, character_name: character_name)
    end

    # def all_credits
    #     ["#{}: Played by #{}", "]
    # end

    def fire_actor(actor)
        fired = self.roles.where(actor_id: actor.id)
        fired.destroy
    end

end