class FixersController < ApplicationController
  def show
    fixers_id = Service.all.map {|user| user.user_id }.uniq
    user = User.find_by(id: params[:id])
    @fixer = user if fixers_id.include? user.id
    @services = Service.where(user_id: @fixer.id)
  end
end
