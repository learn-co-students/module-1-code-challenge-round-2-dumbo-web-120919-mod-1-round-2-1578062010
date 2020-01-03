class Role < ActiveRecord::Base
    belongs_to :movie
    belongs_to :actor

    def actor
        
        self.find_by(id:)
        binding.pry
    end

    def movie
    end
    
    def credit
        # Actor.all.select do |one|
        # end
        # self.all.select do |one_role|
        #     one_role.actor_id == 
        # end
        puts "#{insert character name}: Played by #{insert actor name}"
    end
end