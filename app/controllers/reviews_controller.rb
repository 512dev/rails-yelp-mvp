class ReviewsController < ApplicationController
 
  def new
		@review = Review.new
  end

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
  	@reviews = Review.all
  end


	private
	
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end