class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @neighborhood = Neighborhood.find(params[:id])

  end
end
