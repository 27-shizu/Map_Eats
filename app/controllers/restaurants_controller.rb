class RestaurantsController < ApplicationController
  def search
    @search_term = params[:name]
    @restaurant_results = Restaurant.search(@search_term)
  end

  def show
    @restaurant_info = Restaurant.details(params[:id])
  end
end
