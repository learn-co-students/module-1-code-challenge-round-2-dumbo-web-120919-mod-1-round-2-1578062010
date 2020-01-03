class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        #create new role use self for movie id placement
    end
    def fire_actor
        #call actor
        #delete row and destroy data
    end
    def 

    end
end