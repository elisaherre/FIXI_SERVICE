class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def index
    @users = User.all
    @c_user = [{

      lat: current_user.latitude,
      lng: current_user.longitude
    }]
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {user: user}),
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
