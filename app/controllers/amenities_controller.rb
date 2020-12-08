class AmenitiesController < ApplicationController
  def index

  end

  private

  def amenity_params
    params.require(:amenity).permit(:name)
  end
end
