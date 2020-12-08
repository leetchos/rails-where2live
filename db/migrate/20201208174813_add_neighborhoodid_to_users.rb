class AddNeighborhoodidToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :neighborhood, foreign_key: true
  end
end
