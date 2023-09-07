class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @fixers = User.all.select do |user|
      user.categories.include?(@category)
    end
  end
end
