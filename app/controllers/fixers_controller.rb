class FixersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
    fixers_id = Service.all.map {|user| user.user_id }.uniq
    user = User.find_by(id: params[:id])
    @fixer = user if fixers_id.include? user.id

    suma_rating = @fixer.reviews.map { |review| review.rating }.sum
    @rating = suma_rating > 0 ? suma_rating / @fixer.reviews.count : 0

    @trabajos = @fixer.requests.map { |request| request.status == "finalizada" }.count

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
