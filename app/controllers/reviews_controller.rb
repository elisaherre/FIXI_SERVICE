class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @request = Request.first
  end

  def create
    # user_id, request_id, content, rating
    @request = Request.find(params[:request_id])
    @service = Service.find(@request.service_id)
    @fixer = User.find(@service.user_id)

    @review = Review.new(review_params)

    if @review.user_id
      @review.user_id = params[:review][:user_id] # el fixer califica al usuario
    else
      @review.user_id = @fixer.id # el usuario califica al fixer
    end

    @review.request = @request

    if @review.save
      redirect_to requests_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id)
  end
end
