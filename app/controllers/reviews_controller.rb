class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:id])
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
