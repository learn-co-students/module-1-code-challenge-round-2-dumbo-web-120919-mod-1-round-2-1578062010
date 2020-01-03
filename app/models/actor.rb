class Actor < ActiveRecord::Base
    has_many :roles
  has_many :movies, through: :roles
end

def total_salary
    self.role.sum(:salary)
  end