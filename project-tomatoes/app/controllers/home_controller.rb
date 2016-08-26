class HomeController < ApplicationController
  def index
    @now_playing = Tmdb::Movie.now_playing
    @coming_soon = Tmdb::Movie.upcoming
  end
end
