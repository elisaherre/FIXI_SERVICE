class CategoriesController < ApplicationController
  def show
    # @categories = Category.all
    @category = Category.find(params[:id])
    @fixers = User.all.select do |user|
      user.categories.include?(@category)
    end
  end
end
