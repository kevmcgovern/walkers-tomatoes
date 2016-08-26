# require 'pp'

class StarsController < ApplicationController

  def create 
    p "hi" * 1000
    p params[:id]
    p params[:stars]
    # if the star that was created exists, find that star through the User's star's for htis movie 
    # else, create a new star 
    star = current_user.stars.find_by(movie_id: params[:id])
    if star 
      star.update_attributes(rating: params[:stars])
    else 
      star = Star.new(user_id: current_user.id, rating: params[:stars], movie_id: params[:id])
      if star.save 
        redirect_to movie_path(params[:id])
      else 
        @errors = star.errors.full_messages
        redirect_to movie_path(params[:id])
      end 
    end
      redirect_to movie_path(params[:id])
  end
end
