class CreateAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :amenities do |t|
      t.integer :gym
      t.integer :school
      t.integer :supermarket
      t.integer :hospital
      t.integer :restaurant
      t.integer :mobility

      t.timestamps
    end
  end
end
