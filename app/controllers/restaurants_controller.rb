class RestaurantsController < ApplicationController
  def search
    @search_term = params[:name]
    @restaurant_results = []

    if @search_term.present?
       @restaurant_results = JSON.parse(Restaurant.search(@search_term).body)
    end
  end

  def show
    @restaurant_info = Restaurant.details(params[:id])
  end
end
