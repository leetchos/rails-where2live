class NeighborhoodsController < ApplicationController
  def index
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end
end
