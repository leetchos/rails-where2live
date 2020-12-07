class CreateNeighborhoodAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :neighborhood_amenities do |t|
      t.references :amenity, foreign_key: true
      t.references :neighborhood, foreign_key: true


      t.timestamps
    end
  end
end
