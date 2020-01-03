class Movie < ActiveRecord::Base
    has_many :roles
  has_many :actors, through: :roles
end

def all_credits
  arr = Array.new= ["#{self.character.name}: Played by #{self.actor.name}", "#{self.character.name}: Played by #{self.actor name}", ...]
end 