class ReviewsController < ApplicationController
 
  def new
  	@restaurant = Restaurant.find(params[:restaurant_id])
	@review = Review.new
  end

  def create
  	@restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(review_params)

    if @review.save
	  redirect_to "/restaurants/#{@restaurant.id}"
	else
	  render :new
	end
  end

  def index
  	@reviews = Review.all
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end


  private
	
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
