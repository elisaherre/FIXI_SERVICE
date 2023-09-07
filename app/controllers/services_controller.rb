class ServicesController < ApplicationController

  def index
    @services = Service.where(user_id: current_user)
  end

  def show
    @service = Service.find(params[:id])
  end

  #no lleva vista

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to service_path(@service), notice: 'Se ha creado un nuevo servicio.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @service = Service.find(params[:id])

  end

  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
    redirect_to services_path(@services)
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    # No need for app/views/restaurants/destroy.html.erb
     redirect_to service_path, status: :see_other
  end

end

private

def service_params
  params.require(:services).permit(:user_id, :category_id, :description)
end
