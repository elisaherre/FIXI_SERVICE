class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def index
    @users = User.where.not(id: current_user.id)
    @fixers = []
    @users.each do |user|
      @fixers << user if user.services.size > 0
    end
    @c_user = [{
      lat: current_user.latitude,
      lng: current_user.longitude,
      userMarker_html: render_to_string(partial: "userMarker")
    }]

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {user: user}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    # @categories = Category.all
    @category = Category.find(params[:id])
    @fixers = User.all.select do |user|
      user.categories.include?(@category)
    end
  end
end
