class AmenitiesController < ApplicationController
  def index

  end

  # 1 receber params com array das escolhas
  # 2 condiconal de cada tamanho
  # 3 para cada tamho tera uma query diferente
  # 4 Neighborhood.where(" #{choice1} > 5 AND #{choice2} > 5 AND #{choice3}")
  # 4 fazer um condicional com um numero de escolhas Neighborhood.where(" #{choice1} > 5 AND #{choice2}

  private

  def amenity_params
    params.require(:amenity).permit(:gym, :hospital, :school, :supermarket, :restaurant, :mobility)
  end
end
