class Actor < ActiveRecord::Base
    has_many :movies, through: :roles
    has_many :roles

    
end