class Role < ActiveRecord::Base
    belongs_to :movie
    belongs_to :actor

def credit
  puts "#{actor.name}: Played by #{self.character_name}"
end
    
end