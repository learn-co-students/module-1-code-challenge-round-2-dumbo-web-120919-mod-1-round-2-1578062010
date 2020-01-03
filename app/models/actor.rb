class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

def total_salary
  total = 0
  roles.map do |role|
   total += role.salary
  end
  total
end

def blockbusters
  movies.map do |movie|
  if movie.box_office_earnings > 50000000
    movie.id
  end
  end
end

def self.most_successful
  self.all.sum(:salary)
  #JUST REALIZED MY ERROR :(
end

end
