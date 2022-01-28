class RestaurantsController < ApplicationController
  
  before_action :set_restaurants, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end


  private

  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurants_params
    params.require(:restaurants).permit(:name, :address, :phone_number, :category, :photo)
  end

end
