class NeighborhoodsController < ApplicationController
  def index
    #unless choice1.nil?
     # choice1 = "#{choice1} > 5"
      #choice2 = choice2.nil? ? "" : " AND #{choice2} > 5"
      #choice3 = choice3.nil? ? "" : " AND #{choice3} > 5"
      #Neighborhood.where("#{choice1}#{choice2}#{choice3}")
    #end
  end

  # 1 receber params com array das escolhas
  # 2 condiconal de cada tamanho
  # 3 para cada tamho tera uma query diferente
  # 4 Neighborhood.where(" #{choice1} > 5 AND #{choice2} > 5 AND #{choice3}")
  # 4 fazer um condicional com um numero de escolhas Neighborhood.where(" #{choice1} > 5 AND #{choice2}

  def show
    @neighborhood = Neighborhood.find(params[:id])
  end

  def profile
  end

  def choice
  end
end
