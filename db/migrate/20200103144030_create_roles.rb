class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |r|
      r.integer :movie_id
      r.integer :actor_id
      r.integer :salary 
      r.string :character_name 

      r.timestamps
    end 
  end
end
