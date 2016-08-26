class MoviesController < ApplicationController
  def index 
    @movies = Movie.all 
  end

  def show 
  	@movie = Tmdb::Movie.detail(params[:id])
    @cast = Tmdb::Movie.casts(params[:id])
    # @star = current_user.stars.find(params[:id])

  end
end
