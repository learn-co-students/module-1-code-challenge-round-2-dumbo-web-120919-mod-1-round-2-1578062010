class Createroles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :character_name
      t.integer :salary
      t.integer :actor_id
      t.integer :movie_id
    end
  end
end
