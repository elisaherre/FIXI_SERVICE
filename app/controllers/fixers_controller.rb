class FixersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
    fixers_id = Service.all.map {|user| user.user_id }.uniq
    user = User.find_by(id: params[:id])
    @fixer = user if fixers_id.include? user.id

    @sum = 0
    @cantidad = 0
    @fixer.services.each do |service|
      service.requests.each do |request|
        request.reviews.each do |review|
          @sum += review.rating
          @cantidad += 1
        end
      end
    end

    if @sum > 0
      @average = @sum / @cantidad
    else
      @average = 0
    end

    @completed = 0
    @fixer.services.each do |service|
      service.requests.each do |request|
        @completed += 1 if request.status == "finalizada"
      end
    end

    @services = Service.where(user_id: @fixer.id)
    @reviews = []
    requests = @services.each do |service|
      service.requests.each do |request|
        request.reviews.each do |review|
          @reviews << review
        end
      end
    end
  end
end
