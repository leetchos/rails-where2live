class AddQuantityToNeighborhoodAmenities < ActiveRecord::Migration[6.0]
  def change
    add_column :neighborhood_amenities, :quantity, :integer
  end
end
