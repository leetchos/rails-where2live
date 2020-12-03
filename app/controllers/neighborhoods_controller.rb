class NeighborhoodsController < ApplicationController
  def index
    amenities = params[:amenities].split(',')
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end
end
