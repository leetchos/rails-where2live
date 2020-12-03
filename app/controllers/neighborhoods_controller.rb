class NeighborhoodsController < ApplicationController
  def index
    # amenities = params[:amenities].split(',')
    # unless choice1.nil?
      # choice1 = "#{choice1} > 5"
      # choice2 = choice2.nil? ? "" : " AND #{choice2} > 5"
      # choice3 = choice3.nil? ? "" : " AND #{choice3} > 5"
      # Neighborhood.where("#{choice1}#{choice2}#{choice3}")
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end
end
