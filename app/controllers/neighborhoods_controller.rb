class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all.to_a
    if params[:amenities].present?
      amenities = params[:amenities].split(',')
      update_user_amenities(amenities)
    end
    current_user.amenities.each do |ameni|
      neigh_ids = ameni.neighborhood_amenities.where('quantity >= 5').pluck(:neighborhood_id)
      @neighborhoods.select! { |neighborhood| neigh_ids.include?(neighborhood.id) }
    end
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    current_user.neighborhood = @neighborhood
    current_user.save
  end

  def destroy_user_amenities
    UserAmenity.where(user: current_user).destroy_all
  end

  def update_user_amenities(amenities)
    destroy_user_amenities
    amenities.each do |amenity|
      ameni = Amenity.find_by(name: amenity)
      UserAmenity.create(user_id: current_user.id, amenity_id: ameni.id)
    end
  end

  def chat
    @neighborhood = Neighborhood.find(params[:id])
    @message = Message.new
  end

end
