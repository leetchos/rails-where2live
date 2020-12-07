class NeighborhoodsController < ApplicationController
  def index
     @neighborhoods = Neighborhood.all.to_a
    amenities = params[:amenities].split(',')

    amenities.each do |amenity|
      ameni = Amenity.find_by(name: amenity)
      neigh_ids = ameni.neighborhood_amenities.where('quantity >= 5').pluck(:neighborhood_id)
      @neighborhoods.select! { |neighborhood| neigh_ids.include?(neighborhood.id) }
    end
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end

  # def review
  # neighborhood_id
  # end
end
