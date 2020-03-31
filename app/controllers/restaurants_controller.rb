class RestaurantsController < ApplicationController
  def search
    @search_term = params[:name]
    @movie_results = Restaurant.search(@search_term)
  end

  def show
    @Restaurant_info = Restaurant.details(params[:id])
  end
end
