class RestaurantsController < ApplicationController
  def search
    @search_term = params[:name]
    @restaurant_results = []

    if @search_term.present?
       @restaurant_results = Restaurant.search(@search_term)
    end
  end

  def show
    @restaurant_info = Restaurant.details(params[:id])
  end
end
