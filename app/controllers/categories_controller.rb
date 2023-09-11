class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
    # @categories = Category.all
    @category = Category.find(params[:id])
    @fixers = User.all.select do |user|
      user.categories.include?(@category)
    end
  end
end
