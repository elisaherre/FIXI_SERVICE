class FixersController < ApplicationController
  def show
    fixers_id = Service.all.map {|user| user.user_id }.uniq
    user = User.find_by(id: params[:id])
    @fixer = user if fixers_id.include? user.id
    @services = Service.where(user_id: @fixer.id)

    #iteraciones anidadas para llegar a las reviews del fixer
    @reviews = []
    requests = @services.each do |service|
      service.requests.each do |request|
        request.reviews.each do |review|
          @reviews << review
        end
      end
    end

    # Captura del promedio del rating
    suma = 0
    @reviews.each do |review|
      suma += review.rating
    end
    @average = suma / @reviews.size
  end
end
