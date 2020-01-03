class Role < ActiveRecord::Base
    belongs_to :actor 
    belongs_to :movie

    def actor
        #create instance of actor class
        Actor.all.select do |role|
            role.actor_id == actor_id
        end

    end
    def credit
        #use instanced method to output string interpolation 
        puts "{insert character name}: Played by {insert actor name}"
    end
end

