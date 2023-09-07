class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @request = Request.first
  end

  def create
    # user_id, request_id, content, rating
    @review = Review.new(review_params)
    @request = Request.find(params[:request_id])
    @review.request = @request
    @review.user_id = @request.user_id
    if @review.save
      redirect_to request_path(@request)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
