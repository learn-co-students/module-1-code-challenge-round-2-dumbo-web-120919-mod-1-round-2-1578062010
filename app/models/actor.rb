class Actor < ActiveRecord::Base
    belongs_to :movies
    has_many :movies, through: :roles
end

# Actor -<Role>- Movie