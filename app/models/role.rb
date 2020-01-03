class Role < ActiveRecord::Base
    belongs_to :movie
    belongs_to :actor
end

def credit
    puts "#{self.character.name}: Played by #{self.actor.name}`"
end
    
    