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

  def upvote
    @review = Review.find(params[:id])
    @review.votes.create
    redirect_to :back
  end

  def downvote
    @review = Review.find(params[:id])
    if @review.votes.any?
      @review.votes.last.destroy
      redirect_to :back
    else
      flash.now[:alert] = "Sorry, but you can't have negative votes"
      redirect_to :back
    end
  end

  private
  def review_params
    params.require(:review).permit(:description, :user_id, :movie_id)
  end

end
