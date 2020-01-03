class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        #call actor use sum (:salary)
    end

    def blockbusters
        #collect through data to find all roles which made over 50mil box office
    end

    def self.mostsuccessful
        #loop with find_by for highest salary actor
    end
end