class MoviesController < ApplicationController
  def index 
  end

  def show 
  	@movie = Tmdb::Movie.detail(params[:id])
    @cast = Tmdb::Movie.casts(params[:id])


  end
end
