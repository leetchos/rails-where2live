class ReviewsController < ApplicationController
  def show
  end

  class ReviewsController < ApplicationController
  def create
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @review = Review.new(review_params)
    @review.neighborhood = @neighborhood
    @review.user = current_user
    if @review.save
      redirect_to neighborhood_path(@neighborhood)
    else
      render "neighborhoods/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

end
