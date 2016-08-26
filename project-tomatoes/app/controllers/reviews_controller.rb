class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save
      p @review
      redirect_to @review.movie
    else
      p @review
      redirect_to movies_path
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to @review.movie
    else
      redirect_to movies_path
    end
  end

  private
  def review_params
    params.require(:review).permit(:description, :user_id, :movie_id)
  end

end
