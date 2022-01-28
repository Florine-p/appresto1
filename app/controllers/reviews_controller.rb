class ReviewsController < ApplicationController
  before_action :set_reviews, only: [:edit, :update]

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(reviews_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    end
end

def edit
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def update
  @review.update(reviews_params)
  @restaurant = Restaurant.find(params[:restaurant_id])
  if @review.save
    redirect_to restaurant_path(@restaurant)
  end
end

  private

  def set_reviews
    @review = Review.find(params[:id])
  end

  def reviews_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end
end
